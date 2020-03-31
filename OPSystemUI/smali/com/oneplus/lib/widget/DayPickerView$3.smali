.class Lcom/oneplus/lib/widget/DayPickerView$3;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DayPickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DayPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView$3;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView$3;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DayPickerView;->access$100(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView$3;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DayPickerView;->access$200(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView$3;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DayPickerView;->access$400(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView$3;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/DayPickerView;->access$500(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/support/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView$3;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/DayPickerView;->access$500(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/support/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
