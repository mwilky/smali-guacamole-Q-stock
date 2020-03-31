.class final Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;
.super Landroid/os/Handler;
.source "OpThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$300(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->rescheduleTimeoutH()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$200(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->access$100(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;I)V

    :goto_0
    return-void
.end method
