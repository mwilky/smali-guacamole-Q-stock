.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_FRP_SUPPORTED:Ljava/lang/String; = "frp_supported"

.field private static final ARG_LOCK_TYPE_ALPHANUMERIC:Ljava/lang/String; = "lock_type_alphanumeric"

.field private static final ARG_LOCK_TYPE_PATTERN:Ljava/lang/String; = "lock_type_pattern"

.field public static final EXTRA_FRP_SUPPORTED:Ljava/lang/String; = ":settings:frp_supported"

.field public static final RESULT_SKIP:I = 0xb

.field private static final TAG_SKIP_DIALOG:Ljava/lang/String; = "skip_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "frp_supported"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "lock_type_pattern"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "lock_type_alphanumeric"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "for_fingerprint"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "for_face"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23d

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogBuilder()Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    nop

    const-string v1, "for_face"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    nop

    const-string v2, "for_fingerprint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyLightTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1213eb

    invoke-virtual {v3, v4, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120774

    invoke-virtual {v3, v4, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120946

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const-string v4, "frp_supported"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f120945

    goto :goto_0

    :cond_1
    const v4, 0x7f120944

    :goto_0
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    return-object v3

    :cond_2
    :goto_1
    const-string v4, "lock_type_pattern"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f12095a

    goto :goto_2

    :cond_3
    const-string v4, "lock_type_alphanumeric"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f120959

    goto :goto_2

    :cond_4
    const v4, 0x7f12095b

    :goto_2
    new-instance v5, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyLightTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f1213ee

    invoke-virtual {v3, v5, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f1203db

    invoke-virtual {v3, v5, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    if-eqz v1, :cond_5

    const v5, 0x7f1206d5

    goto :goto_3

    :cond_5
    const v5, 0x7f12070b

    :goto_3
    invoke-virtual {v3, v5}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    return-object v3
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
