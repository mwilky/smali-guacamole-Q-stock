.class public Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;
.super Landroid/os/Handler;
.source "OpBiometricDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method protected constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBiometricDialogImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    goto :goto_0

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$500(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
