.class public Lcom/oneplus/anim/OpGraphLight;
.super Ljava/lang/Object;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/anim/OpGraphLight$AnimateImageView;
    }
.end annotation


# instance fields
.field private m2kOr1080p:I

.field private mAnimateImageHeight:I

.field private mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

.field private mAnimateImageWidth:I

.field private final mContext:Landroid/content/Context;

.field private mFrontCameraPosistion:I

.field private final mHandler:Landroid/os/Handler;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mViewAdded:Z

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fb

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$1;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$1;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->show()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/anim/OpGraphLight;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->hide()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method private hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    :cond_2
    return-void
.end method

.method private show()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "sys.debug.camera.anim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "OpGraphLight"

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    const-string v0, "not show frontCam anim"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v4}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    :cond_1
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / screenWidth:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x438

    const/4 v7, 0x1

    if-ne v6, v5, :cond_2

    iput v7, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    goto :goto_0

    :cond_2
    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    :goto_0
    sget v5, Lcom/android/systemui/R$drawable;->op_front_camera_animation_graph:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    if-ne v5, v7, :cond_5

    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    int-to-double v5, v5

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v5, v8

    double-to-int v5, v5

    iput v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    int-to-double v5, v5

    const-wide v8, 0x3fe7f559b3d07c85L    # 0.7487

    mul-double/2addr v5, v8

    double-to-int v5, v5

    iput v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAnimateImageWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / mAnimateImageHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    iget-object v5, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    if-nez v5, :cond_7

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    :cond_7
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in first show() / rotation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v6, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    const/4 v8, 0x0

    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_a

    const/4 v9, 0x2

    if-eq v2, v9, :cond_9

    const/4 v9, 0x3

    if-eq v2, v9, :cond_8

    goto/16 :goto_2

    :cond_8
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v3

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    move v12, v1

    move v13, v6

    goto :goto_3

    :cond_9
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v3

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v5

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_1

    :cond_a
    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v5

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_1
    move v12, v1

    move v13, v2

    goto :goto_3

    :cond_b
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_2
    move v13, v1

    move v12, v6

    :goto_3
    iget-boolean v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-nez v1, :cond_c

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v14, 0x7de

    const/16 v15, 0x518

    const/16 v16, -0x3

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v2, "GraphLight"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v7, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    :cond_c
    return-void
.end method


# virtual methods
.method public postShow()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
