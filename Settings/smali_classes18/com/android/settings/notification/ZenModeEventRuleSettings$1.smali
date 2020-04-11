.class Lcom/android/settings/notification/ZenModeEventRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x3

    const-string v3, ":"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v7, v1, v4

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    aget-object v6, v1, v4

    :goto_1
    iput-object v6, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    return v3
.end method
