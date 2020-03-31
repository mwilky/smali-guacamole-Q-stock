.class Lcom/android/systemui/statusbar/phone/RotationButtonController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->access$600(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/phone/RotationButton;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->hide()Z

    return-void
.end method
