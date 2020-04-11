.class Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;
.super Ljava/lang/Object;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList(Ljava/util/List;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    return-void
.end method
