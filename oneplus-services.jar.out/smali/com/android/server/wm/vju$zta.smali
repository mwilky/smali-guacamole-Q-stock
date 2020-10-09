.class Lcom/android/server/wm/vju$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/vju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# static fields
.field static final ka:I = 0x1

.field static final la:I = 0x2

.field static final ma:I = 0x3

.field static final na:I = 0x4

.field static final oa:I = 0x5

.field static final pa:I = 0x6

.field static final qa:I = 0x7

.field static final ra:I = 0x8

.field static final ta:I = 0x9

.field static final ua:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/vju;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/vju;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "OpQuickReply"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->tsu(Lcom/android/server/wm/vju;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->dma(Lcom/android/server/wm/vju;)V

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    iget-object v0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {v0}, Lcom/android/server/wm/vju;->oif(Lcom/android/server/wm/vju;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {p1, v0}, Lcom/android/server/wm/vju;->zta(Lcom/android/server/wm/vju;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/vju;->setQuickReplyRunning(Z)V

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->oif(Lcom/android/server/wm/vju;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/wm/vju;->zta(Lcom/android/server/wm/vju;Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    const-string p1, "exitQuickReply fail: "

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->gck(Lcom/android/server/wm/vju;)V

    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0, v2}, Lcom/android/server/wm/vju;->zta(Lcom/android/server/wm/vju;Z)V

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "handling MSG_OEM_HANDLE_SWITCH_IM_BUTTON"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    iget-object v0, p1, Lcom/android/server/wm/vju;->mW:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/vju;->kth(Lcom/android/server/wm/vju;)V

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->gwm(Lcom/android/server/wm/vju;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p1, v0}, Lcom/android/server/wm/vju;->zta(Lcom/android/server/wm/vju;I)V

    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->bvj(Lcom/android/server/wm/vju;)Lcom/android/server/wm/vju$zta;

    move-result-object p0

    const/4 p1, 0x6

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/vju;->igw(Lcom/android/server/wm/vju;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0, p1}, Lcom/android/server/wm/vju;->you(Lcom/android/server/wm/vju;I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->igw(Lcom/android/server/wm/vju;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->bio(Lcom/android/server/wm/vju;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->kth(Lcom/android/server/wm/vju;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handling MSG_OEM_ADD_IME_CONTROLS_BUTTON imeHeight="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0, v1}, Lcom/android/server/wm/vju;->zta(Lcom/android/server/wm/vju;I)V

    goto :goto_1

    :pswitch_8
    const-string p1, "handling MSG_OEM_REMOVE_BUTTON"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->cno(Lcom/android/server/wm/vju;)V

    goto :goto_1

    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handling MSG_OEM_ADD_BUTTON "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    iget-object v0, v0, Lcom/android/server/wm/vju;->lW:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->tsu(Lcom/android/server/wm/vju;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->rtg(Lcom/android/server/wm/vju;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->bvj(Lcom/android/server/wm/vju;)Lcom/android/server/wm/vju$zta;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->bvj(Lcom/android/server/wm/vju;)Lcom/android/server/wm/vju$zta;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/vju$zta;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->ssp(Lcom/android/server/wm/vju;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
