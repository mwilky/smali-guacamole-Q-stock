.class Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;
.super Ljava/lang/Object;
.source "OpNavigationHandle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->doEndAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
