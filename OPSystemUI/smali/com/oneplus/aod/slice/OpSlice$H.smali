.class public final Lcom/oneplus/aod/slice/OpSlice$H;
.super Landroid/os/Handler;
.source "OpSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpSlice;


# direct methods
.method protected constructor <init>(Lcom/oneplus/aod/slice/OpSlice;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSlice$H;->this$0:Lcom/oneplus/aod/slice/OpSlice;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice$H;->this$0:Lcom/oneplus/aod/slice/OpSlice;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/slice/OpSlice;->handleSetListening(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice$H;->this$0:Lcom/oneplus/aod/slice/OpSlice;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/slice/OpSlice;->handleSetEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice$H;->this$0:Lcom/oneplus/aod/slice/OpSlice;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->handleTimeChanged()V

    :cond_4
    :goto_0
    return-void
.end method
