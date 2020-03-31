.class public Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/FooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FooterViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/FooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/FooterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->this$0:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/FooterView;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->this$0:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->access$000(Lcom/android/systemui/statusbar/notification/row/FooterView;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    :cond_2
    return-void
.end method
