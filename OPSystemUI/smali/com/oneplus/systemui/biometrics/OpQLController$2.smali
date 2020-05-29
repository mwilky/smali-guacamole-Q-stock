.class Lcom/oneplus/systemui/biometrics/OpQLController$2;
.super Ljava/lang/Object;
.source "OpQLController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->shouldHideQLView()V

    const/4 p0, 0x1

    return p0
.end method
