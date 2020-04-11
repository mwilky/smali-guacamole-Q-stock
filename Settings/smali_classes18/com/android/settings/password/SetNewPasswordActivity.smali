.class public Lcom/android/settings/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "SetNewPasswordActivity.java"

# interfaces
.implements Lcom/android/settings/password/SetNewPasswordController$Ui;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetNewPasswordActivity"


# instance fields
.field private mCallerAppName:Ljava/lang/String;

.field private mNewPasswordAction:Ljava/lang/String;

.field private mRequestedMinComplexity:I

.field private mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    return-void
.end method

.method private isCallingAppAdmin()Z
    .locals 7

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetNewPasswordActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    return v3
.end method

.method private logSetNewPasswordIntent()V
    .locals 8

    nop

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    move v6, v1

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x66d

    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x66e

    move v3, v1

    :goto_1
    nop

    nop

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v7

    nop

    invoke-virtual {v7, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v2

    const/16 v4, 0x66c

    move-object v1, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public launchChooseLock(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "caller_app_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget v3, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    if-eqz v3, :cond_2

    const-string v4, "requested_min_complexity"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->isCallingAppAdmin()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "is_calling_app_admin"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/password/SetNewPasswordActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SetNewPasswordActivity"

    const-string v1, "Unexpected action to launch this activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->logSetNewPasswordIntent()V

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppLabel(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.REQUEST_PASSWORD_COMPLEXITY"

    invoke-static {p0, v0, v1}, Lcom/android/settings/password/PasswordUtils;->isCallingAppPermitted(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    goto :goto_0

    :cond_1
    const-string v2, "Must have permission android.permission.REQUEST_PASSWORD_COMPLEXITY to use extra android.app.extra.PASSWORD_COMPLEXITY"

    invoke-static {v0, v2}, Lcom/android/settings/password/PasswordUtils;->crashCallingApplication(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    return-void

    :cond_2
    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p0, p0, v1, v2}, Lcom/android/settings/password/SetNewPasswordController;->create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual {v1}, Lcom/android/settings/password/SetNewPasswordController;->dispatchSetNewPasswordIntent()V

    return-void
.end method
