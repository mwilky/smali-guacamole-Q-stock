.class Lcom/oneplus/faceunlock/OpFacelockController$12;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/OpFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "OpFacelockController"

    const-string v0, "Connected to Facelock service"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3402(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3502(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$302(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-virtual {p0, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OpFacelockController"

    const-string v0, "disconnect from Facelock service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3402(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3502(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$12;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$302(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    return-void
.end method
