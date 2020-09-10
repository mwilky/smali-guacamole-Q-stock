.class Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;
.super Ljava/lang/Object;
.source "ReadingModeEffectDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/ReadingModeEffectDetail;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v0, "read_app"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$200()Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$000()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-static {v3}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->setAppEffectSelect(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-static {v1}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bw"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$200()Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$000()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-static {v3}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->setAppEffectSelect(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;->this$0:Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-static {v1}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clr"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    nop

    :goto_0
    return-void
.end method
