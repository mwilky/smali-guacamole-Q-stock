.class Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;
.super Landroid/os/Handler;
.source "WLBSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getTriggerName([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_6

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "configured"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    const-string/jumbo v1, "trigger_values_work"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trigger_values_life"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " trigger values work "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " life "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getModes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result v7

    if-ne v7, v6, :cond_3

    aget-boolean v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    aget-boolean v4, v0, v5

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->getTriggerName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/android/systemui/R$string;->qs_panel_set_up:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result v7

    if-ne v7, v4, :cond_6

    aget-boolean v7, v0, v6

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    aget-boolean v7, v0, v6

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->getTriggerName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$string;->qs_panel_set_up:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v7

    if-ne v7, v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v2

    if-ne v2, v6, :cond_8

    move p1, v5

    :goto_3
    array-length v2, v0

    if-ge p1, v2, :cond_9

    aget-object v2, v1, p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v6

    aput-boolean v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v1

    if-ne v1, v4, :cond_9

    move v1, v5

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_9

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v6

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$700(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->updateWLBIndicators([Z)V

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$800(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$800(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$900(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$900(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;->onWLBModeChanged(I)V

    :cond_b
    :goto_6
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
