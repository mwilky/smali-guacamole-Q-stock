.class public interface abstract Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
.super Ljava/lang/Object;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLockTypeSelectedListener"
.end annotation


# virtual methods
.method public abstract onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
.end method

.method public startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "has_challenge"

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    const-string v3, "show_options_button"

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    const-string v2, "choose_lock_generic_extras"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget v2, p1, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-wide/16 v2, 0x0

    const-string v4, "challenge"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method
