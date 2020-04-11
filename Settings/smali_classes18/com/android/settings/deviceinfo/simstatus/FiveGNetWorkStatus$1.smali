.class Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;
.super Landroid/os/Handler;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x400

    if-eq v1, v2, :cond_1

    const/16 v2, 0x401

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$600(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    nop

    :goto_0
    return-void
.end method
