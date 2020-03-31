.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$hasBubbleWithGroupId$2(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method
