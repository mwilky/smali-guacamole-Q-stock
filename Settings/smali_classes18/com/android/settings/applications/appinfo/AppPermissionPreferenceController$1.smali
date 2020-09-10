.class Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;
.super Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "AppPermissionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-direct {p0}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.heytap.speechassist"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    const v4, 0x7f12132f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v4, v4, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v6}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$300(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-lez p3, :cond_5

    const v6, 0x7f100040

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v0, v6, p3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x7f12132e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
