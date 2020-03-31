.class Lcom/oneplus/lib/widget/TextInputTimePickerView$2;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setActivated(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setActivated(Z)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    sget v1, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_InputFieldUnActive:I

    invoke-static {p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    sget v1, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_InputField:I

    invoke-static {p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I

    move-result-object v1

    aget p2, v1, p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$400(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V

    :cond_0
    return-void
.end method
