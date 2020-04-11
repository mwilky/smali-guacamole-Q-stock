.class public abstract Lcom/oneplus/settings/OPQuitConfirmFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPQuitConfirmFragment.java"


# instance fields
.field public mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method protected abstract needShowWarningDialog()Z
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->performBackEvent()V

    nop

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->performBackEvent()V

    const/4 v0, 0x1

    return v0
.end method

.method public performBackEvent()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->needShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120f79

    const v1, 0x7f120f78

    const v2, 0x7f121273

    const v3, 0x7f120a2f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/settings/OPQuitConfirmFragment;->showWarningDialog(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->finish()V

    :goto_0
    return-void
.end method

.method public setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    return-void
.end method

.method public showWarningDialog(IIII)V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPQuitConfirmFragment$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment$2;-><init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPQuitConfirmFragment$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment$1;-><init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V

    invoke-virtual {v0, p4, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    return-void
.end method
