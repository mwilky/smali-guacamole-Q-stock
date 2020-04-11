.class Lcom/android/settings/notification/ZenModeAutomationSettings$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

.field final synthetic val$rules:[Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->val$rules:[Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->val$rules:[Ljava/util/Map$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeAutomationSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$100(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
