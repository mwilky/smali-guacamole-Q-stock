.class Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "AssistHandleReminderExpBehavior.java"


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

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$200(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$200(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;ILandroid/content/ComponentName;)V

    return-void
.end method
