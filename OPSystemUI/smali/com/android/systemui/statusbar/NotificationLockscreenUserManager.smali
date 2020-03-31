.class public interface abstract Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentUserId()I
.end method

.method public abstract isAnyProfilePublicMode()Z
.end method

.method public abstract isCurrentProfile(I)Z
.end method

.method public abstract isLockscreenPublicMode(I)Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method

.method public needsSeparateWorkChallenge(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
.end method

.method public abstract shouldAllowLockscreenRemoteInput()Z
.end method

.method public abstract shouldHideNotifications(I)Z
.end method

.method public abstract shouldHideNotifications(Ljava/lang/String;)Z
.end method

.method public abstract shouldShowLockscreenNotifications()Z
.end method

.method public abstract shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract updatePublicMode()V
.end method

.method public abstract userAllowsPrivateNotificationsInPublic(I)Z
.end method
