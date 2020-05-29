.class public Lcom/oneplus/aod/OpAodLightEffectContainer;
.super Landroid/widget/FrameLayout;
.source "OpAodLightEffectContainer.java"


# instance fields
.field private mAnimateIndex:I

.field private mAnimationBgLeft:Landroid/graphics/Bitmap;

.field private mAnimationBgRight:Landroid/graphics/Bitmap;

.field private mBgHandler:Landroid/os/Handler;

.field private mBitmapLeft:[Landroid/graphics/Bitmap;

.field private mBitmapRight:[Landroid/graphics/Bitmap;

.field private mDecodeIndex:I

.field private final mFrameRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLeftView:Landroid/widget/ImageView;

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mLightIndex:I

.field private mRightView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return p0
.end method

.method static synthetic access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method private animateNotification()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    const-string v1, "OpAodLightEffectContainer"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aod_light_my_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%02d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v2, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "decodeBitmap but recycled"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return-void

    :cond_1
    if-nez v2, :cond_2

    const-string v3, "decode bitmap null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decodeBitmap. mBitmapLeft="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBitmapRight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string p0, "OpAodLightEffectContainer"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "src is recycled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flip error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private initViews()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->notification_animation_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->notification_animation_right:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    return-void
.end method

.method private loadResources()V
    .locals 2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_notification_light_right:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_notification_light_left:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private prepareResources()V
    .locals 2

    const-string v0, "OpAodLightEffectContainer"

    const-string v1, "prepareResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    const/16 v1, 0x64

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    return-void
.end method

.method private relayoutViews()V
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v2, Lcom/android/systemui/R$dimen;->op_aod_light_effect_my_width:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/systemui/R$dimen;->op_aod_light_effect_width:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    return-void
.end method

.method private startHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    return-void
.end method

.method public resetNotificationAnimView()V
    .locals 5

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    const-string v0, "OpAodLightEffectContainer"

    const-string v1, "resetNotificationAnimView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-eqz p0, :cond_9

    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_9

    aget-object v2, p0, v0

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public setLightIndex(I)V
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v0, p1, :cond_3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set horizon light failed. Invalid index: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAodLightEffectContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v2, v1, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    :cond_3
    return-void
.end method

.method public showLight()V
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V

    :cond_3
    :goto_0
    return-void
.end method
