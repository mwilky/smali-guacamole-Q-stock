.class Lcom/oneplus/settings/OPColorPickerActivity$10;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1100(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const v3, 0x7f1210f5

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionGone()V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/oneplus/settings/OPColorPickerActivity;->access$702(Lcom/oneplus/settings/OPColorPickerActivity;I)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#FF"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$602(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1200(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;

    move-result-object v1

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$800(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$10;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$1300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
