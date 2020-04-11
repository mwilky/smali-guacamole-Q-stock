.class Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$200(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x4f3

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$300(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
