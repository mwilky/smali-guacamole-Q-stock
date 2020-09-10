.class public Lcom/android/settings/search/actionbar/SearchMenuController;
.super Ljava/lang/Object;
.source "SearchMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# static fields
.field public static final NEED_SEARCH_ICON_IN_ACTION_BAR:Ljava/lang/String; = "need_search_icon_in_action_bar"


# instance fields
.field private final mHost:Landroidx/fragment/app/Fragment;

.field private final mPageId:I


# direct methods
.method private constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mPageId:I

    return-void
.end method

.method public static init(Lcom/android/settings/core/InstrumentedFragment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedFragment;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateOptionsMenu$0$SearchMenuController(Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mPageId:I

    invoke-interface {v0, p1, v1}, Lcom/android/settings/search/SearchFeatureProvider;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0xe2

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120496

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    const-string v4, "need_search_icon_in_action_bar"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    const v3, 0x7f12138d

    const/4 v4, 0x0

    invoke-interface {p1, v4, v4, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f08024a

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v4, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/content/Context;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
