.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$3xtD_OohF5aBDcaoQpEWOaywnRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$3xtD_OohF5aBDcaoQpEWOaywnRc;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$3xtD_OohF5aBDcaoQpEWOaywnRc;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$3xtD_OohF5aBDcaoQpEWOaywnRc;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$3xtD_OohF5aBDcaoQpEWOaywnRc;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$implodeStack$2$StackAnimationController(Ljava/lang/Runnable;)V

    return-void
.end method
