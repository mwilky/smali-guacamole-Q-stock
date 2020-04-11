.class public Lcom/android/settings/shortcut/CreateShortcut;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CreateShortcut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateShortcut"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CreateShortcut"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5df

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160037

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
