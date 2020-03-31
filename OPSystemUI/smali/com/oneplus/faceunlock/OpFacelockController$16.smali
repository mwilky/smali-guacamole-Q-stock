.class Lcom/oneplus/faceunlock/OpFacelockController$16;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->updateFacelockLightMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iput-boolean p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4500(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->val$show:Z

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set light view to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->val$show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsKeyguardShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->val$show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4502(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onFaceLockLightingModeChange()V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$5000(Lcom/oneplus/faceunlock/OpFacelockController;Z)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/OpFacelockLightView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/OpFacelockLightView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4502(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onFaceLockLightingModeChange()V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$16;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/OpFacelockLightView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
