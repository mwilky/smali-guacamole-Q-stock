.class Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;
.super Landroid/os/Handler;
.source "OpFrameAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->startHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$200(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result p1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)[I

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$300(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)V

    :cond_2
    :goto_0
    return-void
.end method
