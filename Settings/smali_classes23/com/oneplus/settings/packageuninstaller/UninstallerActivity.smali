.class public Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UninstallerActivity"

.field private static final UNINSTALLING_CHANNEL:Ljava/lang/String; = "uninstalling"


# instance fields
.field private mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private isTv()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showAppNotFound()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const v1, 0x7f120179

    const v2, 0x7f12017a

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;-><init>()V

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;-><init>()V

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method

.method private showConfirmationDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method

.method private showContentFragment(Landroid/app/Fragment;II)V
    .locals 3
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.android.packageinstaller.arg.title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.android.packageinstaller.arg.text"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;II)V
    .locals 5
    .param p1    # Landroid/app/DialogFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    const-string v4, "com.android.packageinstaller.arg.title"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v4, "com.android.packageinstaller.arg.text"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v3}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method private showGenericError()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const v1, 0x7f120753

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;-><init>()V

    const v2, 0x7f120754

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method

.method private showUserIsNotAllowed()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const v1, 0x7f1216b9

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;-><init>()V

    const v2, 0x7f1216ba

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchAborted()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/4 v2, -0x5

    const-string v3, "Cancelled by user"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method public getDialogInfo()Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "android.permission.DELETE_PACKAGES"

    const-string v1, "android.permission.REQUEST_DELETE_PACKAGES"

    const-string v2, "UninstallerActivity"

    const/4 v3, 0x0

    invoke-super {p0, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found for originating uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->finish()V

    return-void

    :cond_0
    const-string v6, "appops"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    const-string v7, "android:request_delete_packages"

    invoke-virtual {v6, v7, v4, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disallowed by AppOps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->finish()V

    return-void

    :cond_1
    invoke-static {p0, v4}, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->getMaxTargetSdkVersionForUid(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v1, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v0, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " does not have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v3, "No package URI in intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package name in URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_4
    nop

    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    invoke-direct {v4}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    const/4 v5, 0x0

    const-string v6, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-boolean v4, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v4, :cond_5

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Only admin user can request uninstall for all users"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showUserIsNotAllowed()V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    iput-object v6, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v4, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_6
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " can\'t request uninstall for user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showUserIsNotAllowed()V

    return-void

    :cond_7
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    const-string v6, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    :try_start_1
    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v6, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/high16 v7, 0x400000

    iget-object v8, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v8, v8, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-interface {v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v6, "Unable to get packageName. Package manager is dead?"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v4, v4, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    :try_start_2
    iget-object v6, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v8, v8, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-interface {v3, v7, v5, v8}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iput-object v5, v6, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v6, "Unable to get className. Package manager is dead?"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showConfirmationDialog()V

    return-void

    :catch_2
    move-exception v0

    const-string v1, "Could not determine the launching uid."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->finish()V

    return-void
.end method

.method public startUninstallProgress()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "UninstallerActivity"

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.RETURN_RESULT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const-string v7, "com.android.packageinstaller.applicationInfo"

    const-string v8, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    const-string v4, "android.intent.extra.USER"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-boolean v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    const-string v4, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-class v2, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->getNewId(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    nop

    new-instance v0, Landroid/content/Intent;

    const-class v10, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v10, v0

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-boolean v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v10, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.android.packageinstaller.extra.APP_LABEL"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v0, "com.android.packageinstaller.extra.UNINSTALL_ID"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    invoke-static {v1, v3, v10, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    const v11, 0x7f1215e6

    invoke-virtual {v1, v11}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "uninstalling"

    invoke-direct {v0, v12, v11, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v11, v0

    invoke-virtual {v8, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x7f08031f

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v9, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    const v12, 0x7f1215e5

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v6, v13, v4

    invoke-virtual {v1, v12, v13}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uninstalling extras="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v12

    new-instance v13, Landroid/content/pm/VersionedPackage;

    iget-object v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v14, -0x1

    invoke-direct {v13, v0, v14}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-boolean v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move v15, v4

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    iget-object v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v8, v3}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v4, "Cannot start uninstall"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showGenericError()V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showGenericError()V

    return-void
.end method
