.class Lcom/oneplus/faceunlock/OpFacelockController$11;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->updateNotifyMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;

.field final synthetic val$color:I

.field final synthetic val$msgId:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;III)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iput p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$type:I

    iput p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$color:I

    iput p4, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3200(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$type:I

    if-nez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->setFacelockRunning(IZ)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$type:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->setFacelockRunning(IZ)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$color:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$msgId:I

    if-lez v0, :cond_8

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3300(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$msgId:I

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3300(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$msgId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$11;->val$color:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_2
    return-void
.end method
