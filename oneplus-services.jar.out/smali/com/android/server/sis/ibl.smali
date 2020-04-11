.class Lcom/android/server/sis/ibl;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/vdb;->registerSettingsCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/sis/vdb;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/ibl;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/sis/ibl;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->tsu(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/sis/ibl;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p1, "OpSlaNetlinkHelper"

    const-string v0, "SLA disabled by Settings, disableSla().."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sis/ibl;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->vju(Lcom/android/server/sis/vdb;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/sis/ibl;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
