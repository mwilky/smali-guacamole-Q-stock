.class public Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FriendlyWarningDialogFragment.java"


# static fields
.field static final KEY_LABEL:Ljava/lang/String; = "l"

.field static final KEY_PKG:Ljava/lang/String; = "p"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22b

    return v0
.end method

.method public synthetic lambda$onCreateDialog$0$FriendlyWarningDialogFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "l"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const v6, 0x7f121a0c

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121a0b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$TJ-pmwUpJG1FTGf_jqUkr3JatE0;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$TJ-pmwUpJG1FTGf_jqUkr3JatE0;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;)V

    const v7, 0x7f120be6

    invoke-virtual {v4, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v6, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$KdT2_3oqRqmf618hTquzzrCOct0;->INSTANCE:Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$KdT2_3oqRqmf618hTquzzrCOct0;

    const v7, 0x7f1203eb

    invoke-virtual {v4, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
