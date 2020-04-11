.class Lcom/android/settings/notification/ZenRulePreference$1;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRulePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
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

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRulePreference;->access$000(Lcom/android/settings/notification/ZenRulePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
