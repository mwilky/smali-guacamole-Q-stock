.class Lcom/android/systemui/biometrics/BiometricDialogImpl$1;
.super Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;
.source "BiometricDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
