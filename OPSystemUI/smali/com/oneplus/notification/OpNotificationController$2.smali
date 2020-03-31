.class Lcom/oneplus/notification/OpNotificationController$2;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "OpNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/notification/OpNotificationController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OpNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController$2;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opActiveChanged, op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", packageName: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", active: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpNotificationController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/notification/OpNotificationController$2;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p2, p1, p3, p4}, Lcom/oneplus/notification/OpNotificationController;->access$100(Lcom/oneplus/notification/OpNotificationController;ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$2;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p0}, Lcom/oneplus/notification/OpNotificationController;->access$200(Lcom/oneplus/notification/OpNotificationController;)V

    return-void
.end method
