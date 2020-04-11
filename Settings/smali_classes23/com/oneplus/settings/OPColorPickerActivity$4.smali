.class Lcom/oneplus/settings/OPColorPickerActivity$4;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->initAccentColorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;

.field final synthetic val$mPalette:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    iput-object p2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->val$mPalette:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->val$mPalette:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionGone()V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$702(Lcom/oneplus/settings/OPColorPickerActivity;I)I

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible()V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->val$mPalette:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$602(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/OPColorPickerActivity;->access$800(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
