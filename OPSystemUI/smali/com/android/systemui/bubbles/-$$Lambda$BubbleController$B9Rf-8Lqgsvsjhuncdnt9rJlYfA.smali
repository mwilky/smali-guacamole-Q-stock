.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController;

.field private final synthetic f$1:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;->f$1:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    return-void
.end method


# virtual methods
.method public final onBubbleExpandChanged(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;->f$1:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleController;->lambda$setExpandListener$0$BubbleController(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V

    return-void
.end method
