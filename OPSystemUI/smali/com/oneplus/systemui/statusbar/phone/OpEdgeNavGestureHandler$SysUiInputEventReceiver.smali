.class Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "OpEdgeNavGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SysUiInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-static {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
