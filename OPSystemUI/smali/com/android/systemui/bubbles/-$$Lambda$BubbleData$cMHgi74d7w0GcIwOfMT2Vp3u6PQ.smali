.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;->f$0:Lcom/android/systemui/bubbles/BubbleData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;->f$0:Lcom/android/systemui/bubbles/BubbleData;

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$trim$0$BubbleData(Lcom/android/systemui/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method
