.class Lcom/android/server/ire;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fto;


# direct methods
.method constructor <init>(Lcom/android/server/fto;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "CommonFrontMonitor"

    const-string p1, "[scene] arguments is null while handling CMD_FETCH_CONFIG"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-array p1, v1, [I

    const/16 v2, 0xcd

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CONFIG_NAME_VIDEO_ENHANCEMENT"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v2, p1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;Ljava/lang/String;)V

    :cond_3
    new-array p1, v1, [I

    const/16 v2, 0x7e

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CONFIG_NAME_SMART5G"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v2, p1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;Ljava/lang/String;)V

    :cond_4
    new-array p1, v1, [I

    const/16 v1, 0xf9

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "CONFIG_NAME_FASTOUTPUT"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0, p1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
