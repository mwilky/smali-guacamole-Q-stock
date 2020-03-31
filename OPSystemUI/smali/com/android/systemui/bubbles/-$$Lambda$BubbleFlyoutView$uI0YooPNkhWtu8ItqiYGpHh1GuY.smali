.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

.field private final synthetic f$1:Landroid/graphics/PointF;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;->f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;->f$1:Landroid/graphics/PointF;

    iput-boolean p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;->f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;->f$1:Landroid/graphics/PointF;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->lambda$showFlyout$0$BubbleFlyoutView(Landroid/graphics/PointF;Z)V

    return-void
.end method
