.class Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpLockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "LockIcon"

    const-string/jumbo p1, "zoomInAnimtor end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "LockIcon"

    const-string/jumbo v0, "zoomInAnimtor start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)V

    :cond_1
    return-void
.end method
