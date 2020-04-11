.class public Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "GrayscaleConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_0
    return-void
.end method
