.class Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/SimpleMonthView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$600(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$700(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-string v0, "dd MMMM yyyy"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$800(Lcom/oneplus/lib/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$000(Lcom/oneplus/lib/widget/SimpleMonthView;II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$100(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$400(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result p0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, ""

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$200(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$300(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_2
    return-void
.end method
