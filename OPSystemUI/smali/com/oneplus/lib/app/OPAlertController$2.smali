.class Lcom/oneplus/lib/app/OPAlertController$2;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$2;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$2;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$800(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->alert_dialog_round_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$2;->val$parent:Landroid/view/View;

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
