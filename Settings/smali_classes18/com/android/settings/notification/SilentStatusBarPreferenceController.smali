.class public Lcom/android/settings/notification/SilentStatusBarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SilentStatusBarPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "silent_icons"


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "silent_icons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->shouldHideSilentStatusBarIcons(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/NotificationBackend;->setHideSilentStatusIcons(Z)V

    const/4 v0, 0x1

    return v0
.end method
