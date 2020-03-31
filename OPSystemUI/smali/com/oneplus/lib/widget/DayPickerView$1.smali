.class Lcom/oneplus/lib/widget/DayPickerView$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView$1;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;Ljava/util/Calendar;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView$1;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/DayPickerView;->access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView$1;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/DayPickerView;->access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView$1;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-interface {p1, p0, p2}, Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;->onDaySelected(Lcom/oneplus/lib/widget/DayPickerView;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
