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

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_1
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

    invoke-static {p0, v0, v1, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_9
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

    invoke-static {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    goto :goto_0

    :pswitch_b
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    goto :goto_0

    :pswitch_c
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
