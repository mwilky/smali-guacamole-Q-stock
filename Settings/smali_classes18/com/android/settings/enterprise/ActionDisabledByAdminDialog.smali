.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;
.super Landroid/app/Activity;
.source "ActionDisabledByAdminDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, -0x2710

    if-ne v1, v3, :cond_2

    iput-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    :goto_0
    return-object v0
.end method

.method getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.extra.RESTRICTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
