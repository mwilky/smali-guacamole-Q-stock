.class public Lcom/android/settings/notification/AssistantCapabilityPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AssistantCapabilityPreferenceController.java"


# static fields
.field static final PRIORITIZER_KEY:Ljava/lang/String; = "asst_capability_prioritizer"

.field static final SMART_KEY:Ljava/lang/String; = "asst_capabilities_actions_replies"


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationBackend;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asst_capability_prioritizer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_importance"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asst_capabilities_actions_replies"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "key_contextual_actions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_text_replies"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2

    :cond_2
    return v2
.end method

.method setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asst_capability_prioritizer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v1, "key_importance"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->allowAssistantAdjustment(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asst_capabilities_actions_replies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v1, "key_contextual_actions"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->allowAssistantAdjustment(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v1, "key_text_replies"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->allowAssistantAdjustment(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
