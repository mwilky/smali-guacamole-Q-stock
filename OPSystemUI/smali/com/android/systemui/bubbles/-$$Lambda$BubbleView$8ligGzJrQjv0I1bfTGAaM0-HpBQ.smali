.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;->f$0:Lcom/android/systemui/bubbles/BubbleView;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;->f$0:Lcom/android/systemui/bubbles/BubbleView;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleView;->lambda$setDotPosition$0$BubbleView(Z)V

    return-void
.end method
