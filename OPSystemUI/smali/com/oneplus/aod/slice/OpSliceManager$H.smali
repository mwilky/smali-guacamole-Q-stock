.class public final Lcom/oneplus/aod/slice/OpSliceManager$H;
.super Landroid/os/Handler;
.source "OpSliceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpSliceManager;


# direct methods
.method protected constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$H;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager$H;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$800(Lcom/oneplus/aod/slice/OpSliceManager;)V

    :cond_0
    return-void
.end method
