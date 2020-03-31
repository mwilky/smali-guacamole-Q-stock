.class final Lcom/android/systemui/assist/AssistHandleOffBehavior;
.super Ljava/lang/Object;
.source "AssistHandleOffBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .locals 0

    invoke-interface {p2}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    return-void
.end method
