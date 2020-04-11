.class Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;
.super Ljava/lang/Object;
.source "ModuleLicensesPreferenceController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Predicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/content/pm/ModuleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public test(Landroid/content/pm/ModuleInfo;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/legal/ModuleLicenseProvider;->getPackageAssetManager(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOTICE.html.gz"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/ModuleInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;->test(Landroid/content/pm/ModuleInfo;)Z

    move-result p1

    return p1
.end method
