.class Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;

.field final synthetic val$decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field final synthetic val$isHardwareConfigAllowed:Z

.field final synthetic val$preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

.field final synthetic val$requestedHeight:I

.field final synthetic val$requestedWidth:I

.field final synthetic val$strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;IIZLcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/PreferredColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->this$0:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;

    iput p2, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    iput p3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    iput-boolean p4, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$isHardwareConfigAllowed:Z

    iput-object p5, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object p6, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    iput-object p7, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->this$0:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    iget v1, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    iget-boolean v3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$isHardwareConfigAllowed:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1$1;-><init>(Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;)V

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    iget v2, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    :cond_2
    iget v3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    iget v6, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    if-ne v6, v5, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    :cond_3
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x2

    const-string v9, "ImageDecoder"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resizing from ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] to ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] scaleFactor: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v6, v7}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_7

    iget-object v8, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    sget-object v9, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    if-ne v8, v9, :cond_5

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    nop

    if-eqz v1, :cond_6

    sget-object v4, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_2

    :cond_6
    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_2
    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    goto :goto_3

    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_8

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    goto :goto_4

    :cond_8
    :goto_3
    nop

    :goto_4
    return-void
.end method
