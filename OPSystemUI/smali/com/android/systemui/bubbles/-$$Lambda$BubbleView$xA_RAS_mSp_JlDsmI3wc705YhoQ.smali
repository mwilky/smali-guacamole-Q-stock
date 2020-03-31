.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleView;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleView;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;->f$0:Lcom/android/systemui/bubbles/BubbleView;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;->f$0:Lcom/android/systemui/bubbles/BubbleView;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleView;->lambda$animateDot$2$BubbleView(ZLjava/lang/Runnable;)V

    return-void
.end method
