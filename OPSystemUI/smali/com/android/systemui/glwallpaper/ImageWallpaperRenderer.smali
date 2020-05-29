.class public Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"

# interfaces
.implements Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;
.implements Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWallpaperRenderer"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

.field private final mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

.field private final mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

.field private mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

.field private final mScissor:Landroid/graphics/Rect;

.field private mScissorMode:Z

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private final mViewport:Landroid/graphics/Rect;

.field private final mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXOffset:F

.field private mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperManager not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    new-instance p2, Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p2, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    new-instance p1, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p1, p2}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;-><init>(Lcom/android/systemui/glwallpaper/ImageGLProgram;)V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    new-instance p1, Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-direct {p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    new-instance p1, Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;)V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->start(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private loadBitmap()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private scaleViewport(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f8ccccd    # 1.1f

    invoke-static {v4, v5, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    sub-float/2addr v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float v6, v0, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v5, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProxy="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceSize="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScissor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mViewport="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScissorMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "threshold="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->getThreshold()F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    return-void
.end method

.method public onDrawFrame()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->getThreshold()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->getReveal()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uAod2Opacity"

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uPer85"

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v2, "uReveal"

    invoke-virtual {v0, v2}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->scaleViewport(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->useTexture()V

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->draw()V

    return-void
.end method

.method public onRevealEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->postRender()V

    return-void
.end method

.method public onRevealStart(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->preRender()V

    return-void
.end method

.method public onRevealStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0, p0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    sget v1, Lcom/android/systemui/R$raw;->image_wallpaper_vertex_shader:I

    sget v2, Lcom/android/systemui/R$raw;->image_wallpaper_fragment_shader:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->useGLProgram(II)Z

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, "reload bitmap failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setup(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public reportSurfaceSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public updateAmbientMode(ZJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->updateAwake(ZJ)V

    return-void
.end method

.method public updateOffsets(FF)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
