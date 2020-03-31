.class Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$100(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$000(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V

    return-void
.end method
