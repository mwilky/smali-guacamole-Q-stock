.class Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;
.super Ljava/lang/Object;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->confirmAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v0, "status"

    const-string v1, "dc_dimming"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {v4}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "1"

    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v2, "0"

    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
