.class public final synthetic Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;

.field private final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;->f$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;->f$0:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$2$b-NhvTYgYNCb40I45kX1_Om4DAM;->f$1:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;->lambda$onSystemGestureExclusionChanged$0$OpEdgeNavGestureHandler$2(Landroid/graphics/Region;)V

    return-void
.end method
