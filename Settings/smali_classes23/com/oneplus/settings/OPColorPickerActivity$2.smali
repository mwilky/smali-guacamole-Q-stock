.class Lcom/oneplus/settings/OPColorPickerActivity$2;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$100(Lcom/oneplus/settings/OPColorPickerActivity;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$102(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$200(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    const v1, 0x7f120ff6

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/oneplus/settings/OPColorPickerActivity;->access$102(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$200(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$2;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    const v1, 0x7f120ff7

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    :goto_0
    return-void
.end method
