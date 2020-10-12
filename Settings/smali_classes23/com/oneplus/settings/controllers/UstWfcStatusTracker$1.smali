.class Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;
.super Landroid/os/Handler;
.source "UstWfcStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive WFC status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {v2}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$200(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1210f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void
.end method
