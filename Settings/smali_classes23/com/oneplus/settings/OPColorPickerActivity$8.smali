.class Lcom/oneplus/settings/OPColorPickerActivity$8;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->showColotEditDialog()V
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

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$8;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$8;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$8;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$8;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1000(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$8;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$8;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1000(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method
