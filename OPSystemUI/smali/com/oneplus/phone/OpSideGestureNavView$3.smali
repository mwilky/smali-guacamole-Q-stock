.class Lcom/oneplus/phone/OpSideGestureNavView$3;
.super Landroid/util/IntProperty;
.source "OpSideGestureNavView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/phone/OpSideGestureNavView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/oneplus/phone/OpSideGestureNavView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/phone/OpSideGestureNavView;


# direct methods
.method constructor <init>(Lcom/oneplus/phone/OpSideGestureNavView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$3;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/phone/OpSideGestureNavView;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView$3;->get(Lcom/oneplus/phone/OpSideGestureNavView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oneplus/phone/OpSideGestureNavView;I)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$3;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$000(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/graphics/PointF;

    move-result-object p1

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$3;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$000(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/phone/OpSideGestureNavView$3;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p2}, Lcom/oneplus/phone/OpSideGestureNavView;->access$100(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$3;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$200(Lcom/oneplus/phone/OpSideGestureNavView;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/phone/OpSideGestureNavView$3;->setValue(Lcom/oneplus/phone/OpSideGestureNavView;I)V

    return-void
.end method
