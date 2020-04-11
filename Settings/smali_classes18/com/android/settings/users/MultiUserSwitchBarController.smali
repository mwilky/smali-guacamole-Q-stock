.class public Lcom/android/settings/users/MultiUserSwitchBarController;
.super Ljava/lang/Object;
.source "MultiUserSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserSwitchBarCtrl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

.field final mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mUserCapabilities:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v1

    const-string v2, "user_switcher_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_user_switch"

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v1}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggling multi-user feature enabled state to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiUserSwitchBarCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "user_switcher_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;->onMultiUserSwitchChanged(Z)V

    :cond_0
    return v0
.end method
