.class Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;
.super Ljava/lang/Object;
.source "OPQuickReplySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/im/OPQuickReplySettings$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/im/OPQuickReplySettings$1;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iput-object p2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object v2, v2, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v2}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    nop

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quickReplyApp.delete error for index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", replyApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", quickReplyApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPQuickReplySettings"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "enable_freeform_support"

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object v3, v3, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v3}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$400(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object v3, v3, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v3}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$500(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;->this$1:Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    iget-object v3, v3, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v3}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickReplyAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyIMStatus()V

    return v4
.end method
