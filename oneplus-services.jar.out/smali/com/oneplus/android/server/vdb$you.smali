.class Lcom/oneplus/android/server/vdb$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field public static final Aa:I = 0x8

.field public static final Ba:I = 0x9

.field public static final Ca:I = 0xa

.field public static final Da:I = 0xb

.field public static final Ea:I = 0xc

.field public static final Fa:I = 0xd

.field public static final Ga:I = 0xe

.field public static final Ha:I = 0xf

.field public static final Ia:I = 0x10

.field public static final Ja:I = 0x11

.field public static final Ka:I = 0x12

.field public static final La:I = 0x13

.field public static final Ma:I = 0x14

.field public static final Na:I = 0x15

.field public static final Oa:I = 0x16

.field public static final Pa:I = 0x17

.field public static final ra:I = 0x0

.field public static final ta:I = 0x1

.field public static final ua:I = 0x2

.field public static final va:I = 0x3

.field public static final wa:I = 0x4

.field public static final xa:I = 0x5

.field public static final ya:I = 0x6

.field public static final za:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/vdb;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/vdb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "OpMotorManagerService"

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling msg MSG_UPDATE_UP_MOTOR_VIEW, show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUpMotorWindow=null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v2}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUpMotorViewShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v2}, Lcom/oneplus/android/server/vdb;->gck(Lcom/oneplus/android/server/vdb;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    new-instance v1, Lcom/oneplus/android/server/vdb$tsu;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {v1, v2}, Lcom/oneplus/android/server/vdb$tsu;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-static {p1, v1}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb$tsu;)Lcom/oneplus/android/server/vdb$tsu;

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1, v4}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Z)Z

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/oneplus/android/server/vdb$tsu;->B(Z)V

    goto/16 :goto_9

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/vdb$tsu;->B(Z)V

    goto/16 :goto_9

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->bud(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->cno(Lcom/oneplus/android/server/vdb;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->vju(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    :goto_3
    invoke-static {p0, v0, v2}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I

    goto/16 :goto_9

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->ire(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->cgv(Lcom/oneplus/android/server/vdb;)V

    const/4 p1, 0x7

    invoke-static {}, Lcom/oneplus/android/server/vdb;->ke()I

    move-result v1

    :goto_4
    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->veq(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->lqr(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->fto(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->hmo(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_a
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$2300()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;I)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpsys sCSocketThreadameraUserPid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$2300()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecording: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_b
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpsys sCameraUserPkg: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isFloatWin: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_MOTOR_DELAY_DOWN_SYSTEMAPP:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, p1, v2}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I

    goto/16 :goto_9

    :pswitch_d
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->ear(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_e
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->cjf(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_f
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->oxb(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_10
    invoke-static {}, Lcom/oneplus/android/server/vdb;->le()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$400()Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_6
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$2300()I

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x50d0004

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :pswitch_11
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->obl(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_12
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, v0, v2}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I

    goto/16 :goto_9

    :pswitch_13
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "MSG_MOTOR_DOWN_LOCKED_DETECT"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zgw(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_14
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "MSG_MOTOR_UP_LOCKED_DETECT"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->vdb(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_15
    invoke-static {v3}, Lcom/oneplus/android/server/vdb;->C(Z)Z

    const-string v1, "171"

    const-string v2, "171"

    const-string v3, "481"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "481"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/android/server/rtg;->you([Ljava/lang/String;)Z

    goto/16 :goto_9

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Z)Z

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oneplus/android/server/vdb;->rtg(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/oneplus/android/server/vdb;->ssp(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyActivityChanged: mBackgroudPkg = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->bvj(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFocusPkg = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsSplitMode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->igw(Lcom/oneplus/android/server/vdb;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBackActivity = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->ibl(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFocusActivity = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->gwm(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->ugm(Lcom/oneplus/android/server/vdb;)V

    goto/16 :goto_9

    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_9

    goto/16 :goto_9

    :cond_9
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_a

    goto/16 :goto_9

    :cond_a
    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;I)I

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v7, p1, v6

    invoke-static {v7}, Lcom/oneplus/android/server/vdb;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    if-ne v1, v4, :cond_b

    invoke-static {v5}, Lcom/oneplus/android/server/vdb;->access$2302(I)I

    aget-object p1, p1, v6

    :goto_6
    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :cond_b
    if-nez v1, :cond_c

    invoke-static {v5}, Lcom/oneplus/android/server/vdb;->access$2302(I)I

    const-string p1, ""

    goto :goto_6

    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->kth(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    iget-object v6, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v6}, Lcom/oneplus/android/server/vdb;->bio(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    if-eqz p1, :cond_d

    if-eqz v6, :cond_d

    move v8, v4

    goto :goto_8

    :cond_d
    move v8, v3

    :goto_8
    invoke-static {v7, v8}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Z)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "socket from camera, cameraUserPid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCameraUserID: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v5}, Lcom/oneplus/android/server/vdb;->cno(Lcom/oneplus/android/server/vdb;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  sceneFlag: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFocusPkg: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v5}, Lcom/oneplus/android/server/vdb;->wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sCameraUserPkg: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_14

    if-eq v1, v4, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera use, mUpMotorViewShowing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v3}, Lcom/oneplus/android/server/vdb;->gck(Lcom/oneplus/android/server/vdb;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->qbh(Lcom/oneplus/android/server/vdb;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->gck(Lcom/oneplus/android/server/vdb;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    new-instance v1, Lcom/oneplus/android/server/vdb$tsu;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {v1, v2}, Lcom/oneplus/android/server/vdb$tsu;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-static {p1, v1}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb$tsu;)Lcom/oneplus/android/server/vdb$tsu;

    :cond_10
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1, v4}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Z)Z

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p0

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->oif(Lcom/oneplus/android/server/vdb;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "org.codeaurora.ims"

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v3}, Lcom/oneplus/android/server/vdb;->wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v3}, Lcom/oneplus/android/server/vdb;->cno(Lcom/oneplus/android/server/vdb;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;I)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->igw(Lcom/oneplus/android/server/vdb;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {}, Lcom/oneplus/android/server/vdb;->_b()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v6, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p0

    const/16 p1, 0x15

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$3500()I

    move-result v1

    goto/16 :goto_4

    :cond_13
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    goto/16 :goto_3

    :cond_14
    invoke-static {v4}, Lcom/oneplus/android/server/vdb;->access$302(Z)Z

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result p1

    if-eqz p1, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera not use, mUpMotorViewShowing="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->gck(Lcom/oneplus/android/server/vdb;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->gck(Lcom/oneplus/android/server/vdb;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oneplus/android/server/vdb$tsu;->B(Z)V

    :cond_16
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "camera release, remove MSG_MOTOR_DELAY_DOWN_BACKGROUD"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$you;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->ywr(Lcom/oneplus/android/server/vdb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    const-string p1, "Exception in MotorHandler.handleMessage: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
