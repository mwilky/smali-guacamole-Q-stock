.class Lcom/oneplus/android/server/zta/sis/you$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/zta/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/zta/sis/you;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/zta/sis/you;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/zta/sis/you$you;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "viewName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "jankType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "jankLevel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you$you;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/zta/sis/you;->zta(Lcom/oneplus/android/server/zta/sis/you;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you$you;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis/you;->sis(Lcom/oneplus/android/server/zta/sis/you;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you$you;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0, v1, v2, v3, v0}, Lcom/oneplus/android/server/zta/sis/you;->you(Lcom/oneplus/android/server/zta/sis/you;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/oneplus/android/server/zta/sis/you;->access$200()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you$you;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0, v1, v2, v3, v0}, Lcom/oneplus/android/server/zta/sis/you;->zta(Lcom/oneplus/android/server/zta/sis/you;Ljava/lang/String;Ljava/lang/String;II)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you$you;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis/you;->zta(Lcom/oneplus/android/server/zta/sis/you;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
