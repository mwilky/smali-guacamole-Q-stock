.class Lcom/oneplus/screenshot/GlobalScreenshot$21$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$21;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v1, v1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2402(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V

    return-void
.end method
