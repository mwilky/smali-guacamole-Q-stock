.class Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->swapContent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

.field final synthetic val$blockingHelper:Landroid/view/View;

.field final synthetic val$confirmation:Landroid/view/ViewGroup;

.field final synthetic val$isUndo:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$blockingHelper:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$isUndo:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$confirmation:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->mCancelled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$blockingHelper:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$isUndo:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$confirmation:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$isUndo:Z

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
