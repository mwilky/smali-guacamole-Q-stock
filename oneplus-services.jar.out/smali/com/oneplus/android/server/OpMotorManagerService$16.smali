.class Lcom/oneplus/android/server/OpMotorManagerService$16;
.super Landroid/app/IProcessObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/vdb;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$16;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$2300()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$2300()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProcessDied pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpMotorManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$16;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->ywr(Lcom/oneplus/android/server/vdb;)V

    :cond_1
    return-void
.end method
