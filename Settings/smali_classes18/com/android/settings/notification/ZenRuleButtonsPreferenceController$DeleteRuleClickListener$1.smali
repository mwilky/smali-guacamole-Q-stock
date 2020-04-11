.class Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DELETE_RULE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$400(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    const/16 v4, 0xaf

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$500(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-class v2, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/16 v2, 0x8e

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
