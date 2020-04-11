.class Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityHearingAidPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120061

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->access$000(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->access$000(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;->this$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->access$000(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :cond_3
    :goto_1
    return-void
.end method
