.class Lcom/oneplus/aod/OpAodLightEffectContainer$1;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFrameRunnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAodLightEffectContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v2

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mBitmapLeft is recycled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v2

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mBitmapRight is recycled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v3}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x10

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrameRunnable error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    return-void
.end method
