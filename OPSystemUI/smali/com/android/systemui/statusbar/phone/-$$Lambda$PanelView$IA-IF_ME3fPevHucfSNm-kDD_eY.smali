.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;->f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$IA-IF_ME3fPevHucfSNm-kDD_eY;->f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->lambda$createHeightAnimator$3$PanelView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
