.class public Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OpOtaConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_1
    return-void
.end method
