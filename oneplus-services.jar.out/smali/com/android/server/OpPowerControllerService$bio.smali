.class public Lcom/android/server/OpPowerControllerService$bio;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "bio"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OpPowerControllerService;


# direct methods
.method public constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    const-string p1, "MyThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting MyThread: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$4800(Lcom/android/server/OpPowerControllerService;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$1900(Lcom/android/server/OpPowerControllerService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OpPowerControllerService"

    if-eqz v0, :cond_1

    const-string v0, "Probe OK, disable restriction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$2100(Lcom/android/server/OpPowerControllerService;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oops, should skip this change to disable restriction, mIsUnderRestriction="

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$2200(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$cno;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$cno;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$cno;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    sget-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->DISABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    goto :goto_1

    :cond_1
    const-string v0, "Probe Failed, enable restriction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$2100(Lcom/android/server/OpPowerControllerService;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oops, should skip this change to enable restriction, mIsUnderRestriction="

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$bio;->this$0:Lcom/android/server/OpPowerControllerService;

    sget-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->ENABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    :goto_1
    sget-object v1, Lcom/android/server/OpPowerControllerService$PurposeType;->NORMAL:Lcom/android/server/OpPowerControllerService$PurposeType;

    invoke-static {p0, v0, v1}, Lcom/android/server/OpPowerControllerService;->access$2000(Lcom/android/server/OpPowerControllerService;Lcom/android/server/OpPowerControllerService$PkgRestrictType;Lcom/android/server/OpPowerControllerService$PurposeType;)V

    :cond_3
    return-void
.end method
