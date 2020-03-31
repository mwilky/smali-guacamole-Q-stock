.class Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpNotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/util/BoostFramework;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/util/BoostFramework;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->mCancelled:Z

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string p1, "HeightAnimatorForBiometricUnlock cancel"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeightAnimatorForBiometricUnlock end, Cancelled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/util/BoostFramework;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/util/BoostFramework;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;Landroid/animation/ValueAnimator;)V

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->mCancelled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string p1, "HeightAnimatorForBiometricUnlock start"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
