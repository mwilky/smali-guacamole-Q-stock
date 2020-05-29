.class Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;
.super Landroid/os/Handler;
.source "OpGestureButtonViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemGestureButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object v2, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result p1

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$300()[F

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt p1, v2, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->setSize()V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$300()[F

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->onPull(F)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$208(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->onRelease()V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$202(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;I)I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->vibrate()V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method
