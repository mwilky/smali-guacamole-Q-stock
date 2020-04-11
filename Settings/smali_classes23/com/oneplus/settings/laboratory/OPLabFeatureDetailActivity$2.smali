.class Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;
.super Ljava/lang/Object;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
