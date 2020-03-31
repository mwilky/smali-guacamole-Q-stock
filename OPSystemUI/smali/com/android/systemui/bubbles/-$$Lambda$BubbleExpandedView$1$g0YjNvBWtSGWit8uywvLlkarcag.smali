.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleExpandedView$1;

.field private final synthetic f$1:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;->f$0:Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;->f$1:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;->f$0:Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;->f$1:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->lambda$onActivityViewReady$0$BubbleExpandedView$1(Landroid/app/ActivityOptions;)V

    return-void
.end method
