.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$602(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$700(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$800(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
