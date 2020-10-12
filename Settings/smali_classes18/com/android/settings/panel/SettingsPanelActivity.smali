.class public Lcom/android/settings/panel/SettingsPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsPanelActivity.java"


# static fields
.field public static final KEY_CALLING_PACKAGE_NAME:Ljava/lang/String; = "PANEL_CALLING_PACKAGE_NAME"

.field public static final KEY_MEDIA_PACKAGE_NAME:Ljava/lang/String; = "PANEL_MEDIA_PACKAGE_NAME"

.field public static final KEY_PANEL_TYPE_ARGUMENT:Ljava/lang/String; = "PANEL_TYPE_ARGUMENT"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, "panel_activity"

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private createOrUpdatePanel(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "panel_activity"

    const-string v2, "Null intent, closing Panel Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a03ba

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/android/settings/panel/PanelFragment;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/android/settings/panel/PanelFragment;

    iget-object v5, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Lcom/android/settings/panel/PanelFragment;->setArguments(Landroid/os/Bundle;)V

    move-object v5, v4

    check-cast v5, Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {v5}, Lcom/android/settings/panel/PanelFragment;->updatePanelWithAnimation()V

    goto :goto_0

    :cond_1
    const v5, 0x7f0d02c5

    invoke-virtual {p0, v5}, Lcom/android/settings/panel/SettingsPanelActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    new-instance v6, Lcom/android/settings/panel/PanelFragment;

    invoke-direct {v6}, Lcom/android/settings/panel/PanelFragment;-><init>()V

    iget-object v7, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lcom/android/settings/panel/PanelFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method
