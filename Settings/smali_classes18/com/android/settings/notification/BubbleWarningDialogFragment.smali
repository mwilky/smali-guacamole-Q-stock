.class public Lcom/android/settings/notification/BubbleWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BubbleWarningDialogFragment.java"


# static fields
.field static final KEY_PKG:Ljava/lang/String; = "p"

.field static final KEY_UID:Ljava/lang/String; = "u"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6a6

    return v0
.end method

.method public synthetic lambda$onCreateDialog$0$BubbleWarningDialogFragment(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/notification/BubblePreferenceController;->applyBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$BubbleWarningDialogFragment(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/notification/BubblePreferenceController;->revertBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    nop

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1203b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1203af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$SOMFEqqXI_4CCDbvcJugYVb9oWE;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$SOMFEqqXI_4CCDbvcJugYVb9oWE;-><init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    const v7, 0x7f1203ad

    invoke-virtual {v5, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$Z_nzEFn9OFBeG9cn_sIHv_0h-8Y;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$Z_nzEFn9OFBeG9cn_sIHv_0h-8Y;-><init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    const v7, 0x7f1203ae

    invoke-virtual {v5, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setPkgInfo(Ljava/lang/String;I)Lcom/android/settings/notification/BubbleWarningDialogFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
