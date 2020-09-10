.class public Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "GestureNavigationNotAvailableDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureNavigationNotAvailableDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;

    invoke-direct {v0}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "GestureNavigationNotAvailableDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6d3

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    nop

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->getDefaultHomeAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v3, 0x7f120798

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120be6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
