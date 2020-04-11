.class Lcom/android/settings/notification/ZenRulePreference$2;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRulePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRulePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRulePreference;->access$100(Lcom/android/settings/notification/ZenRulePreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRulePreference;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, v0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenRulePreference;->access$200(Lcom/android/settings/notification/ZenRulePreference;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, v0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    return-void
.end method
