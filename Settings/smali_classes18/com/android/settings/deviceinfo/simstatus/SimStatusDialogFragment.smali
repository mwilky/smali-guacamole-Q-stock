.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SimStatusDialogFragment.java"


# static fields
.field private static final DIALOG_TITLE_BUNDLE_KEY:Ljava/lang/String; = "arg_key_dialog_title"

.field private static final SIM_SLOT_BUNDLE_KEY:Ljava/lang/String; = "arg_key_sim_slot"

.field private static final TAG:Ljava/lang/String; = "SimStatusDialog"


# instance fields
.field private mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SimStatusDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "arg_key_sim_slot"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "arg_key_dialog_title"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-direct {v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4de

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_key_sim_slot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0096

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->initialize()V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public removeSettingFromScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
