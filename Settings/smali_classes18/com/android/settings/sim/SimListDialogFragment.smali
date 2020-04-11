.class public Lcom/android/settings/sim/SimListDialogFragment;
.super Lcom/android/settings/sim/SimDialogFragment;
.source "SimListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;
    }
.end annotation


# static fields
.field protected static final KEY_INCLUDE_ASK_EVERY_TIME:Ljava/lang/String; = "include_ask_every_time"


# instance fields
.field protected mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

.field mSubscriptions:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIZ)Lcom/android/settings/sim/SimListDialogFragment;
    .locals 3

    new-instance v0, Lcom/android/settings/sim/SimListDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/sim/SimListDialogFragment;-><init>()V

    invoke-static {p0, p1}, Lcom/android/settings/sim/SimListDialogFragment;->initArguments(II)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "include_ask_every_time"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/SimListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getCurrentSubscriptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6ab

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getDialogType()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/sim/SimDialogActivity;->onSubscriptionSelected(II)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimListDialogFragment;->setAdapter(Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->updateDialog()V

    return-object v1
.end method

.method setAdapter(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/sim/SimListDialogFragment;->mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public updateDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getCurrentSubscriptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "include_ask_every_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settings/sim/SimListDialogFragment;->mAdapter:Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->notifyDataSetChanged()V

    return-void
.end method
