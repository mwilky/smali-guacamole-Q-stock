.class public Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;
.super Landroid/os/Handler;
.source "OpVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;


# direct methods
.method protected constructor <init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVolumeDialogImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$OpHandler;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->access$000(Lcom/oneplus/volume/OpVolumeDialogImpl;I)V

    :goto_0
    return-void
.end method
