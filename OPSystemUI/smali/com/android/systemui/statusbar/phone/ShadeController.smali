.class public interface abstract Lcom/android/systemui/statusbar/phone/ShadeController;
.super Ljava/lang/Object;
.source "ShadeController.java"


# virtual methods
.method public abstract addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
.end method

.method public abstract addPostCollapseAction(Ljava/lang/Runnable;)V
.end method

.method public abstract animateCollapsePanels(IZ)V
.end method

.method public abstract closeShadeIfOpen()Z
.end method

.method public abstract collapsePanel(Z)V
.end method

.method public abstract collapsePanel()Z
.end method

.method public abstract goToKeyguard()V
.end method

.method public abstract goToLockedShade(Landroid/view/View;)V
.end method

.method public abstract instantExpandNotificationsPanel()V
.end method

.method public abstract isDozing()Z
.end method

.method public abstract isDozingCustom()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract onActivationReset()V
.end method

.method public abstract postOnShadeExpanded(Ljava/lang/Runnable;)V
.end method

.method public abstract setLockscreenUser(I)V
.end method

.method public abstract showBouncer(Z)V
.end method

.method public abstract updateAreThereNotifications()V
.end method

.method public abstract wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V
.end method
