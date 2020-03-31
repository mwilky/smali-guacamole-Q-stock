.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Ljava/lang/Runnable;

.field private final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$2:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$magnetToStackIfNeededThenAnimateDismissal$14$BubbleStackView(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
