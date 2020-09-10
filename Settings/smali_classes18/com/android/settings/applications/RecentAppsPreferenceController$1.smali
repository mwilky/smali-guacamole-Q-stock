.class Lcom/android/settings/applications/RecentAppsPreferenceController$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "RecentAppsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RecentAppsPreferenceController;->onReloadDataCompleted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1213f2

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderDetails(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->apply()V

    return-void
.end method
