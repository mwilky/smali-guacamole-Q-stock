.class Lcom/oneplus/android/server/zta/zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/zta/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/zta/sis;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/zta/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/zta/zta;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean p1, Lcom/oneplus/android/server/zta/sis;->ENABLE:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    const-string v1, "OPTM"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mTestReceiver # onReceive # action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "com.optm.action.test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mTestReceiver # onReceive # code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "debug_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    goto :goto_0

    :cond_2
    const-string p2, "debug_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    goto :goto_0

    :cond_3
    const-string p2, "dump"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/zta/zta;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis;->zta(Lcom/oneplus/android/server/zta/sis;)V

    goto :goto_0

    :cond_4
    const-string p2, "monitor_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/oneplus/android/server/zta/zta;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/zta/sis;->zta(Lcom/oneplus/android/server/zta/sis;Z)V

    goto :goto_0

    :cond_5
    const-string p2, "monitor_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/oneplus/android/server/zta/zta;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-static {p0, v2}, Lcom/oneplus/android/server/zta/sis;->zta(Lcom/oneplus/android/server/zta/sis;Z)V

    goto :goto_0

    :cond_6
    const-string p2, "report"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oneplus/android/server/zta/zta;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis;->you(Lcom/oneplus/android/server/zta/sis;)Lcom/oneplus/android/server/zta/sis$zta;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/oneplus/android/server/zta/sis;->zta(Lcom/oneplus/android/server/zta/sis;Ljava/lang/String;Lcom/oneplus/android/server/zta/sis$zta;)V

    :cond_7
    :goto_0
    return-void
.end method
