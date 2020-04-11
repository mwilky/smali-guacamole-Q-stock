.class public Lcom/android/server/policy/OpPhoneWindowManager$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "you"
.end annotation


# static fields
.field static final aa:I = 0x1

.field static final ba:I = 0x2

.field static final ca:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1800(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$sis;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/bud;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/bud;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/policy/bud;->f(Z)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2100(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v1, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/bud;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p0, v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/bud;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2100(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/bud;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p1, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/bud;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/policy/bud;->f(Z)V

    :cond_4
    :goto_0
    return-void
.end method
