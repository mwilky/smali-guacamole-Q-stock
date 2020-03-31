.class Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;
.super Ljava/lang/Object;
.source "OpFrameAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$500(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameAnimationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$600(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$402(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$700(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$402(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationView.mBitmap#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$600(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$700(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$600(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$800(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$900(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$408(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$1000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$500(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$1100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$1100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$1102(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$1002(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$1000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->start(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$600(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$600(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
