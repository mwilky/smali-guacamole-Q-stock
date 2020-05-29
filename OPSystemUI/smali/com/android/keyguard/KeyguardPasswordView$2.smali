.class Lcom/android/keyguard/KeyguardPasswordView$2;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$700(Lcom/android/keyguard/KeyguardPasswordView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayoutChange, mPwdEntry.getHeight():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mOriginPasswordEntryHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$100(Lcom/android/keyguard/KeyguardPasswordView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mFIcon.getHeight():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$200(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mOriginFingerprintIconHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$300(Lcom/android/keyguard/KeyguardPasswordView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardPasswordView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$100(Lcom/android/keyguard/KeyguardPasswordView;)I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$200(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$300(Lcom/android/keyguard/KeyguardPasswordView;)I

    move-result p2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardPasswordView;->access$100(Lcom/android/keyguard/KeyguardPasswordView;)I

    move-result p3

    iget-object p4, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPasswordView;->access$200(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
