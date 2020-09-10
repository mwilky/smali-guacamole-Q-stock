.class public Lcom/android/settings/development/OverlayCategoryPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OverlayCategoryPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERLAY_TARGET_PACKAGE:Ljava/lang/String; = "android"

.field static final PACKAGE_DEVICE_DEFAULT:Ljava/lang/String; = "package_device_default"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OverlayCategoryPC"


# instance fields
.field private final mAvailable:Z

.field private final mCategory:Ljava/lang/String;

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$RCMrfsrPVQZYqDXv-YOMB7C2Md8;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$RCMrfsrPVQZYqDXv-YOMB7C2Md8;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iput-object p2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mCategory:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "overlay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/settings/development/OverlayCategoryPreferenceController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroidx/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    iget-object v4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mCategory:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :cond_1
    nop

    sget-object v1, Lcom/android/settings/development/OverlayCategoryPreferenceController;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic lambda$setOverlay$1(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 1

    iget v0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return v0
.end method

.method private setOverlay(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$ImUcEZADd2hoyz2UKfsCeptUZ30;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$ImUcEZADd2hoyz2UKfsCeptUZ30;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "package_device_default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    :cond_2
    new-instance v1, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;-><init>(Lcom/android/settings/development/OverlayCategoryPreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->setPreference(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mAvailable:Z

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string v0, "package_device_default"

    invoke-direct {p0, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->setOverlay(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->setOverlay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setPreference(Landroidx/preference/ListPreference;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "package_device_default"

    iget-object v3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f121172

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getOverlayInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    iget-object v7, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
