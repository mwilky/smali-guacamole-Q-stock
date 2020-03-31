.class Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "OpEdgeNavGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSystemGestureExclusionChanged$0$OpEdgeNavGestureHandler$2(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;Landroid/graphics/Region;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
