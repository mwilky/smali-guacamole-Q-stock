.class Lcom/android/server/wm/lqr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/vju;->Xb(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private WG:I

.field private YG:F

.field final synthetic this$0:Lcom/android/server/wm/vju;


# direct methods
.method constructor <init>(Lcom/android/server/wm/vju;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const-string p0, "OpQuickReply"

    const-string p1, "Unsupported Touch event "

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    iget v0, p0, Lcom/android/server/wm/lqr;->WG:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v2, p0, Lcom/android/server/wm/lqr;->YG:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/android/server/wm/vju;->sis(Lcom/android/server/wm/vju;I)I

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->ibl(Lcom/android/server/wm/vju;)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p2}, Lcom/android/server/wm/vju;->ugm(Lcom/android/server/wm/vju;)I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->ugm(Lcom/android/server/wm/vju;)I

    move-result p2

    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wm/vju;->sis(Lcom/android/server/wm/vju;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->ibl(Lcom/android/server/wm/vju;)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p2}, Lcom/android/server/wm/vju;->vdb(Lcom/android/server/wm/vju;)I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->vdb(Lcom/android/server/wm/vju;)I

    move-result p2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->sis(Lcom/android/server/wm/vju;)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->gwm(Lcom/android/server/wm/vju;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1, p2}, Lcom/android/server/wm/vju;->sis(Lcom/android/server/wm/vju;I)I

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->zta(Lcom/android/server/wm/vju;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p2}, Lcom/android/server/wm/vju;->ibl(Lcom/android/server/wm/vju;)I

    move-result p2

    const-string v2, "quickreply_imbutton_x"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->bvj(Lcom/android/server/wm/vju;)Lcom/android/server/wm/vju$zta;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p0}, Lcom/android/server/wm/vju;->bvj(Lcom/android/server/wm/vju;)Lcom/android/server/wm/vju$zta;

    move-result-object p0

    const-wide/16 p1, 0x1388

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->gwm(Lcom/android/server/wm/vju;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->bvj(Lcom/android/server/wm/vju;)Lcom/android/server/wm/vju$zta;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/vju;

    invoke-static {p1}, Lcom/android/server/wm/vju;->gwm(Lcom/android/server/wm/vju;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1, v0}, Lcom/android/server/wm/vju;->sis(Lcom/android/server/wm/vju;I)I

    iput v0, p0, Lcom/android/server/wm/lqr;->WG:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/lqr;->YG:F

    return v1
.end method
