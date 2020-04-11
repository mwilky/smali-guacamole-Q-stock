.class Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbnormalRingerConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingerModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;

    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_0
    return-void
.end method
