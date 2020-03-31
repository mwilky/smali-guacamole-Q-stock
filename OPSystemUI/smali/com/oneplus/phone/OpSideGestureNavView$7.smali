.class Lcom/oneplus/phone/OpSideGestureNavView$7;
.super Landroid/util/FloatProperty;
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
        "Landroid/util/FloatProperty<",
        "Lcom/oneplus/phone/OpSideGestureNavView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/phone/OpSideGestureNavView;


# direct methods
.method constructor <init>(Lcom/oneplus/phone/OpSideGestureNavView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$7;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/phone/OpSideGestureNavView;)Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView$7;->get(Lcom/oneplus/phone/OpSideGestureNavView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oneplus/phone/OpSideGestureNavView;F)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$7;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p0, p2}, Lcom/oneplus/phone/OpSideGestureNavView;->access$902(Lcom/oneplus/phone/OpSideGestureNavView;F)F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/phone/OpSideGestureNavView$7;->setValue(Lcom/oneplus/phone/OpSideGestureNavView;F)V

    return-void
.end method
