.class final Lcom/oneplus/android/server/display/OpColorDisplayService$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$600(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/bvj;->H(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->He()V

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/display/bvj;->E(Z)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Ve()V

    goto/16 :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Ue()V

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/tsu;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1800(Lcom/oneplus/android/server/display/OpColorDisplayService;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/tsu;->updateAutoAssertiveDisplayStatus(F)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->disablelightSensor()V

    goto/16 :goto_2

    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1600(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/bvj;->J(Z)V

    goto/16 :goto_2

    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Re()V

    goto/16 :goto_2

    :pswitch_a
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Oe()V

    goto/16 :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Pe()V

    goto/16 :goto_2

    :pswitch_c
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Ne()V

    goto/16 :goto_2

    :pswitch_d
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->setCustomColorTemperature()V

    goto/16 :goto_2

    :pswitch_e
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->recoverOneplusColorMatrix()V

    goto/16 :goto_2

    :pswitch_f
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1400(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_10
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1300(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_11
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1200(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_12
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_13
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_14
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_15
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1000(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->resetStatus(I)V

    goto :goto_2

    :pswitch_16
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Se()V

    goto :goto_2

    :pswitch_17
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->Qe()V

    goto :goto_2

    :pswitch_18
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :goto_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/bvj;->L(Z)V

    goto :goto_2

    :pswitch_19
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/bvj;->K(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
