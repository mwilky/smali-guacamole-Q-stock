.class public Lcom/oneplus/settings/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private mNeedShowWarningDialog:Z

.field public mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/BaseActivity;->mNeedShowWarningDialog:Z

    return-void
.end method


# virtual methods
.method protected needShowWarningDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->performBackEvent()V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->performBackEvent()V

    const/4 v0, 0x1

    return v0
.end method

.method public performBackEvent()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->needShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120f79

    const v1, 0x7f120f78

    const v2, 0x7f121273

    const v3, 0x7f120a2f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/settings/BaseActivity;->showWarningDialog(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method public setNeedShowWarningDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/BaseActivity;->mNeedShowWarningDialog:Z

    return-void
.end method

.method public setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/BaseActivity;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    return-void
.end method

.method public showWarningDialog(IIII)V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/BaseActivity$2;-><init>(Lcom/oneplus/settings/BaseActivity;)V

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/BaseActivity$1;-><init>(Lcom/oneplus/settings/BaseActivity;)V

    invoke-virtual {v0, p4, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/BaseActivity;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/BaseActivity;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    return-void
.end method
