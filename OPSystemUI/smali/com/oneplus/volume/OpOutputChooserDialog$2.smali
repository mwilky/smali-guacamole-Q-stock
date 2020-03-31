.class Lcom/oneplus/volume/OpOutputChooserDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "OpOutputChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$2;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "OpOutputChooserDialog"

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$400()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$2;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$2;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->cleanUp()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-static {}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$400()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Received ACTION_HEADSET_PLUG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$2;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    :cond_4
    :goto_0
    return-void
.end method
