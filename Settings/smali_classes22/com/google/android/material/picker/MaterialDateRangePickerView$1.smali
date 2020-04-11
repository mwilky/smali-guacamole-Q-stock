.class Lcom/google/android/material/picker/MaterialDateRangePickerView$1;
.super Ljava/lang/Object;
.source "MaterialDateRangePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialDateRangePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/material/picker/MonthInYearAdapter;->withinMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$000(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {v0, p3}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$002(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$100(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$000(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I

    move-result v0

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {v0, p3}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$102(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$102(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {v0, p3}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$002(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    :goto_0
    return-void
.end method
