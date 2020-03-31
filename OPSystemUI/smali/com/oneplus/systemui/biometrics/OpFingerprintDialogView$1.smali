.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;
.super Landroid/os/Handler;
.source "OpFingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleAddToWindow()V

    goto/16 :goto_0

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, v0, v1, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, v0, v1, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    goto/16 :goto_0

    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto/16 :goto_0

    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V

    goto :goto_0

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto :goto_0

    :pswitch_10
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_11
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_12
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_13
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_14
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_15
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_17
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto :goto_0

    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto :goto_0

    :pswitch_1a
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
