.class Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;
.super Landroid/view/IPinnedStackListener$Stub;
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

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->access$002(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;I)I

    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 0

    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 0

    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 0

    return-void
.end method
