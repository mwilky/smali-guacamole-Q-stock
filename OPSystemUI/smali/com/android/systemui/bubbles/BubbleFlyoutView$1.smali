.class Lcom/android/systemui/bubbles/BubbleFlyoutView$1;
.super Landroid/view/ViewOutlineProvider;
.source "BubbleFlyoutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;->this$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;->this$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-static {p0, p2}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->access$000(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/Outline;)V

    return-void
.end method
