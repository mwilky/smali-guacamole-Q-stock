.class Lcom/google/android/material/picker/MaterialDatePickerView$1;
.super Ljava/lang/Object;
.source "MaterialDatePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialDatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialDatePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialDatePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialDatePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDatePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialDatePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/material/picker/MonthInYearAdapter;->withinMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDatePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-static {v0, p3}, Lcom/google/android/material/picker/MaterialDatePickerView;->access$002(Lcom/google/android/material/picker/MaterialDatePickerView;I)I

    return-void
.end method
