.class public Lcom/android/settings/sim/PreferredSimDialogFragment;
.super Lcom/android/settings/sim/SimDialogFragment;
.source "PreferredSimDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferredSimDialogFrag"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/sim/PreferredSimDialogFragment;
    .locals 3

    new-instance v0, Lcom/android/settings/sim/PreferredSimDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/sim/PreferredSimDialogFragment;-><init>()V

    const/4 v1, 0x3

    const v2, 0x7f1214bb

    invoke-static {v1, v2}, Lcom/android/settings/sim/PreferredSimDialogFragment;->initArguments(II)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/PreferredSimDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getPreferredSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->dismiss()V

    return-void

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1214ba

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6ad

    return v0
.end method

.method public getPreferredSubscription()Landroid/telephony/SubscriptionInfo;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    return-object v2
.end method

.method protected getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getPreferredSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getDialogType()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/sim/SimDialogActivity;->onSubscriptionSelected(II)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121a1c

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b4d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->updateDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-object v0
.end method

.method public updateDialog()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->updateDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
