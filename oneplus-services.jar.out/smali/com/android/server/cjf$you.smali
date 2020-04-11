.class Lcom/android/server/cjf$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field public static final GET_ONLINECONFIG:I


# instance fields
.field final synthetic this$0:Lcom/android/server/cjf;


# direct methods
.method constructor <init>(Lcom/android/server/cjf;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cjf$you;->this$0:Lcom/android/server/cjf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/cjf$you;->this$0:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->zta(Lcom/android/server/cjf;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProcessManagement"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x5e

    aput v1, p1, v0

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/cjf$you;->this$0:Lcom/android/server/cjf;

    invoke-static {p0}, Lcom/android/server/cjf;->you(Lcom/android/server/cjf;)Lcom/android/server/cjf$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/cjf$zta;->grabOnlineConfig()V

    :cond_1
    :goto_0
    return-void
.end method
