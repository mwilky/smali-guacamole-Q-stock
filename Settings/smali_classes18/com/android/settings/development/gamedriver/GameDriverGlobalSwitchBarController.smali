.class public Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;
.super Ljava/lang/Object;
.source "GameDriverGlobalSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "game_driver_all_apps"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onGameDriverContentChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "game_driver_all_apps"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "game_driver_all_apps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v4, 0x3

    if-nez p1, :cond_2

    if-ne v0, v4, :cond_2

    return v3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-static {v5, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method
