.class Lcom/android/systemui/bubbles/BubbleStackView$2;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$2;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$2;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView$2;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$000(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$2;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$100(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$2;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z

    const/4 p0, 0x1

    return p0
.end method
