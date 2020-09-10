.class public Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBypassingAppsPreferenceController.java"


# static fields
.field protected static final KEY:Ljava/lang/String; = "zen_mode_bypassing_apps"


# instance fields
.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_bypassing_apps"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getNumAppsBypassingDnd(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100055

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getNumAppsBypassingDnd(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
