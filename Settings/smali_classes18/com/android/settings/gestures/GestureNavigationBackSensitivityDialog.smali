.class public Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "GestureNavigationBackSensitivityDialog.java"


# static fields
.field private static final KEY_BACK_SENSITIVITY:Ljava/lang/String; = "back_sensitivity"

.field private static final TAG:Ljava/lang/String; = "GestureNavigationBackSensitivityDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private getOverlayManager()Landroid/content/om/IOverlayManager;
    .locals 1

    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    return-object v0
.end method

.method public static show(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;

    invoke-direct {v0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "back_sensitivity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "GestureNavigationBackSensitivityDialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6d4

    return v0
.end method

.method public synthetic lambda$onCreateDialog$0$GestureNavigationBackSensitivityDialog(Landroid/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "back_sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->getOverlayManager()Landroid/content/om/IOverlayManager;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "back_sensitivity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12020b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12020a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;-><init>(Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;Landroid/widget/SeekBar;)V

    const v4, 0x7f120b9f

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
