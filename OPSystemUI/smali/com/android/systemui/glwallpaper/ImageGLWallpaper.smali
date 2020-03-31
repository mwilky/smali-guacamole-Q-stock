.class Lcom/android/systemui/glwallpaper/ImageGLWallpaper;
.super Ljava/lang/Object;
.source "ImageGLWallpaper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageGLWallpaper"

.field private static final TEXTURES:[F

.field private static final VERTICES:[F


# instance fields
.field private mAttrPosition:I

.field private mAttrTextureCoordinates:I

.field private mCurrentTexCoordinate:[F

.field private final mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

.field private final mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mTextureId:I

.field private mUniAod2Opacity:I

.field private mUniPer85:I

.field private mUniReveal:I

.field private mUniTexture:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->VERTICES:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/android/systemui/glwallpaper/ImageGLProgram;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    sget-object p1, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->VERTICES:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->VERTICES:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p1, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->TEXTURES:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->TEXTURES:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private setupAttributes()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getAttributeHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    iget-object v7, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const-string v2, "aTextureCoordinates"

    invoke-virtual {v0, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getAttributeHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    iget-object v7, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method private setupTexture(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->TAG:Ljava/lang/String;

    const-string p1, "setupTexture: invalid bitmap"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->TAG:Ljava/lang/String;

    const-string p1, "setupTexture: glGenTextures() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 p1, 0x2801

    const/16 v0, 0x2601

    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget p1, v1, v2

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureId:I

    return-void
.end method

.method private setupUniforms()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const-string/jumbo v1, "uAod2Opacity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getUniformHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniAod2Opacity:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const-string/jumbo v1, "uPer85"

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getUniformHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniPer85:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const-string/jumbo v1, "uReveal"

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getUniformHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniReveal:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getUniformHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniTexture:I

    return-void
.end method


# virtual methods
.method adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .locals 8

    sget-object v0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->TEXTURES:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, v2, :cond_5

    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    int-to-float v4, v1

    div-float/2addr p3, v4

    int-to-float v5, v2

    div-float/2addr v5, v4

    if-ge p1, p2, :cond_1

    int-to-float v4, p1

    int-to-float v6, p2

    div-float/2addr v4, v6

    mul-float/2addr v5, v4

    :cond_1
    add-float v4, p3, v5

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    sub-float p3, v3, v5

    :cond_2
    move v4, v0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    array-length v7, v6

    if-ge v4, v7, :cond_5

    const/4 v7, 0x2

    if-eq v4, v7, :cond_4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_4

    const/4 v7, 0x6

    if-ne v4, v7, :cond_3

    goto :goto_1

    :cond_3
    aput p3, v6, v4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    add-float v7, p3, v5

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v6, v4

    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_5
    if-le p1, p2, :cond_a

    sub-int p3, p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p2, p2

    div-float/2addr p2, p1

    if-ge v1, v2, :cond_6

    int-to-float p1, v1

    int-to-float p4, v2

    div-float/2addr p1, p4

    mul-float/2addr p2, p1

    :cond_6
    add-float p1, p3, p2

    cmpl-float p1, p1, v3

    if-lez p1, :cond_7

    sub-float p3, v3, p2

    :cond_7
    const/4 p1, 0x1

    move p4, p1

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    array-length v2, v1

    if-ge p4, v2, :cond_a

    if-eq p4, p1, :cond_9

    const/4 v2, 0x3

    if-eq p4, v2, :cond_9

    const/16 v2, 0xb

    if-ne p4, v2, :cond_8

    goto :goto_4

    :cond_8
    aput p3, v1, p4

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    add-float v2, p3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, p4

    :goto_5
    add-int/lit8 p4, p4, 0x2

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method draw()V
    .locals 2

    sget-object p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->VERTICES:[F

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x7b

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    array-length v1, v0

    if-ge p4, v1, :cond_1

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mCurrentTexCoordinate:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p4, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "mTexCoordinates="

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getHandle(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "aPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "aTextureCoordinates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "uPer85"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "uReveal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "uAod2Opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "uTexture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v6

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    return v6

    :cond_1
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniTexture:I

    return p0

    :cond_2
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniReveal:I

    return p0

    :cond_3
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniPer85:I

    return p0

    :cond_4
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniAod2Opacity:I

    return p0

    :cond_5
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrTextureCoordinates:I

    return p0

    :cond_6
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mAttrPosition:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7760111a -> :sswitch_5
        -0x757f4c46 -> :sswitch_4
        -0x4113175e -> :sswitch_3
        -0x33c20a9b -> :sswitch_2
        0x1072421 -> :sswitch_1
        0x5e5b0caa -> :sswitch_0
    .end sparse-switch
.end method

.method setup(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setupAttributes()V

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setupUniforms()V

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setupTexture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method useTexture()V
    .locals 2

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mTextureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->mUniTexture:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
