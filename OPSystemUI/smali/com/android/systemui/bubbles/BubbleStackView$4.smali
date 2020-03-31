.class Lcom/android/systemui/bubbles/BubbleStackView$4;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "BubbleStackView.java"


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
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragged(F)V

    return-void
.end method
