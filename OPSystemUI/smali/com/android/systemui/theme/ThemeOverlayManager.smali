.class Lcom/android/systemui/theme/ThemeOverlayManager;
.super Ljava/lang/Object;
.source "ThemeOverlayManager.java"


# static fields
.field static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field static final OVERLAY_CATEGORY_COLOR:Ljava/lang/String; = "android.theme.customization.accent_color"

.field static final OVERLAY_CATEGORY_FONT:Ljava/lang/String; = "android.theme.customization.font"

.field static final OVERLAY_CATEGORY_ICON_ANDROID:Ljava/lang/String; = "android.theme.customization.icon_pack.android"

.field static final OVERLAY_CATEGORY_ICON_LAUNCHER:Ljava/lang/String; = "android.theme.customization.icon_pack.launcher"

.field static final OVERLAY_CATEGORY_ICON_SETTINGS:Ljava/lang/String; = "android.theme.customization.icon_pack.settings"

.field static final OVERLAY_CATEGORY_ICON_SYSUI:Ljava/lang/String; = "android.theme.customization.icon_pack.systemui"

.field static final OVERLAY_CATEGORY_ICON_THEME_PICKER:Ljava/lang/String; = "android.theme.customization.icon_pack.themepicker"

.field static final OVERLAY_CATEGORY_SHAPE:Ljava/lang/String; = "android.theme.customization.adaptive_icon_shape"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static final SYSTEM_USER_CATEGORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field static final THEME_CATEGORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryToTargetPackage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLauncherPackage:Ljava/lang/String;

.field private final mOverlayManager:Landroid/content/om/OverlayManager;

.field private final mTargetPackageToCategories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThemePickerPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "android.theme.customization.icon_pack.launcher"

    const-string v1, "android.theme.customization.adaptive_icon_shape"

    const-string v2, "android.theme.customization.font"

    const-string v3, "android.theme.customization.accent_color"

    const-string v4, "android.theme.customization.icon_pack.android"

    const-string v5, "android.theme.customization.icon_pack.systemui"

    const-string v6, "android.theme.customization.icon_pack.settings"

    const-string v7, "android.theme.customization.icon_pack.themepicker"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayManager;->THEME_CATEGORIES:Ljava/util/List;

    const-string v0, "android.theme.customization.accent_color"

    const-string v1, "android.theme.customization.font"

    const-string v2, "android.theme.customization.adaptive_icon_shape"

    const-string v3, "android.theme.customization.icon_pack.android"

    const-string v4, "android.theme.customization.icon_pack.systemui"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayManager;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/om/OverlayManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mLauncherPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mThemePickerPackage:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    const-string p2, "android.theme.customization.icon_pack.android"

    const-string p3, "android.theme.customization.adaptive_icon_shape"

    const-string p4, "android.theme.customization.font"

    const-string v0, "android.theme.customization.accent_color"

    filled-new-array {v0, p4, p3, p2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    const-string v2, "android"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    const-string v1, "android.theme.customization.icon_pack.systemui"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    const-string v4, "com.android.systemui"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    const-string v3, "android.theme.customization.icon_pack.settings"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mLauncherPackage:Ljava/lang/String;

    const-string v7, "android.theme.customization.icon_pack.launcher"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mThemePickerPackage:Ljava/lang/String;

    const-string v8, "android.theme.customization.icon_pack.themepicker"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v9

    invoke-interface {p1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p1, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    iget-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mLauncherPackage:Ljava/lang/String;

    invoke-interface {p1, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mThemePickerPackage:Ljava/lang/String;

    invoke-interface {p1, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$applyCurrentUserOverlays$3(Ljava/util/Set;Landroid/content/om/OverlayInfo;)Z
    .locals 0

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyCurrentUserOverlays$4(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyCurrentUserOverlays$5(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$applyCurrentUserOverlays$6(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private setEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-direct {p0, p1, v1, p4}, Lcom/android/systemui/theme/ThemeOverlayManager;->setEnabledAsync(Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/android/systemui/theme/ThemeOverlayManager;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/theme/ThemeOverlayManager;->setEnabledAsync(Ljava/lang/String;Landroid/os/UserHandle;Z)V

    :cond_1
    return-void
.end method

.method private setEnabledAsync(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;-><init>(Lcom/android/systemui/theme/ThemeOverlayManager;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method applyCurrentUserOverlays(Ljava/util/Map;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayManager;->THEME_CATEGORIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$XHd3K8Vp7fhFb4ucZudIi42URZk;

    invoke-direct {v2, p0}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$XHd3K8Vp7fhFb4ucZudIi42URZk;-><init>(Lcom/android/systemui/theme/ThemeOverlayManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;-><init>(Lcom/android/systemui/theme/ThemeOverlayManager;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$FzQkanwY8TEeM97QNlP4yjS7F4s;

    invoke-direct {v2, p0}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$FzQkanwY8TEeM97QNlP4yjS7F4s;-><init>(Lcom/android/systemui/theme/ThemeOverlayManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$rD72NeWKvvYjih6pAWlvN555mFM;

    invoke-direct {v2, v0}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$rD72NeWKvvYjih6pAWlvN555mFM;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;->INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;->INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;

    sget-object v2, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$GlioDk646gj_04NkaTcsRN_awI4;->INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$GlioDk646gj_04NkaTcsRN_awI4;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayManager;->THEME_CATEGORIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, p2, v4}, Lcom/android/systemui/theme/ThemeOverlayManager;->setEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, p2, v4}, Lcom/android/systemui/theme/ThemeOverlayManager;->setEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$applyCurrentUserOverlays$0$ThemeOverlayManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public synthetic lambda$applyCurrentUserOverlays$1$ThemeOverlayManager(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, v0}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic lambda$applyCurrentUserOverlays$2$ThemeOverlayManager(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mTargetPackageToCategories:Ljava/util/Map;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setEnabledAsync$7$ThemeOverlayManager(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v1, 0x0

    const-string v2, "ThemeOverlayManager"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 v3, 0x1

    aput-object p2, v0, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "setEnabled: %s %s %b"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg == null, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/om/OverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/om/OverlayManager;->setEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
