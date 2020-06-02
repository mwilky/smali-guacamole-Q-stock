.class Lcom/oneplus/android/server/scene/hmo;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/cgv;->_a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/cgv;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/cgv;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/hmo;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/hmo;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/cgv;->sis(Lcom/oneplus/android/server/scene/cgv;)Lcom/oneplus/android/server/scene/vju;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/hmo;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/cgv;->sis(Lcom/oneplus/android/server/scene/cgv;)Lcom/oneplus/android/server/scene/vju;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/hmo;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/cgv;->rtg(Lcom/oneplus/android/server/scene/cgv;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/hmo;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/cgv;->sis(Lcom/oneplus/android/server/scene/cgv;)Lcom/oneplus/android/server/scene/vju;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/hmo;->this$0:Lcom/oneplus/android/server/scene/cgv;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/cgv;->zta(Lcom/oneplus/android/server/scene/cgv;Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/vju;

    :cond_0
    return-void
.end method
