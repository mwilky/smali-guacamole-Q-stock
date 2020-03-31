.class Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;
.super Ljava/lang/Object;
.source "OpLockIcon.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->opUpdateIconAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    const-string p1, "LockIcon"

    const-string v0, "start recog anim again"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->val$v:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
