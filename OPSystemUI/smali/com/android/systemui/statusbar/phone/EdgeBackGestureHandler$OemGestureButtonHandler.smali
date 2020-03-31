.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;
.super Landroid/os/Handler;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemGestureButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeEffectView:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1000()[F

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeEffectView:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->setSize()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeEffectView:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1000()[F

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->onPull(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$908(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOemGestureButtonAnimHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeEffectView:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->onRelease()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$902(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_OEM_SEND_KEY side="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "EdgeBackGestureHandler"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    const/4 v3, 0x4

    invoke-static {p1, v0, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;II)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p1, v2, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;II)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeEffectView:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->vibrate()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOemGestureButtonAnimHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$OemGestureButtonHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method
