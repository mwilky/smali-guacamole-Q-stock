.class Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1480(Lcom/oneplus/lib/widget/NumberPicker;I)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1280(Lcom/oneplus/lib/widget/NumberPicker;I)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {p0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method
