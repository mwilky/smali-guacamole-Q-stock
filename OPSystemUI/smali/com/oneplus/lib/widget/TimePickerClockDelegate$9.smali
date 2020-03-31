.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/oneplus/commonctrl/R$id;->am_label:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$id;->pm_label:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    :cond_1
    sget p2, Lcom/oneplus/commonctrl/R$id;->hours:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1, v0, v1, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    :cond_2
    sget p2, Lcom/oneplus/commonctrl/R$id;->minutes:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1, v1, v1, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    nop

    :cond_3
    return-void
.end method
