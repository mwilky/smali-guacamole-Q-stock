.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;
.super Landroid/os/Handler;
.source "PreviewWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    const-string v2, "Longshot.PreviewWindow"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v5}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "stitch timeout, stop stitch last"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$002(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    move v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MSG_UPDATE_PREVIEW mPictureDrawable.getHeight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mScrollContainer.getHeight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isLastUpdate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapSize()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ge v3, v4, :cond_3

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->shouldStitchByView()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapSize()I

    move-result v3

    if-lt v3, v5, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v3

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v6}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    if-lt v3, v6, :cond_4

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result v3

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3, v5}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$302(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$400(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;

    move-result-object v4

    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->startScrollDelay:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_PREVIEW SCROLL_START_DELAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->startScrollDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    :cond_5
    :goto_1
    return-void
.end method
