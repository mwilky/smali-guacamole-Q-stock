.class Lcom/android/server/sis/ssp;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/vdb;->zta(Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/sis/vdb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/ssp;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/sis/ssp;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->bud(Lcom/android/server/sis/vdb;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SlaOnlineConfig"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sis/ssp;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0, p1}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
