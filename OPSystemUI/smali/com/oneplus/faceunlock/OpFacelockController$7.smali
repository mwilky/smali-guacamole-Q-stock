.class Lcom/oneplus/faceunlock/OpFacelockController$7;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$7;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iput-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$7;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$7;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$7;->val$source:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2600(Lcom/oneplus/faceunlock/OpFacelockController;Ljava/lang/String;)V

    return-void
.end method
