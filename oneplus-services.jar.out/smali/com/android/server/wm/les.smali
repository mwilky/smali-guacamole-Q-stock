.class public Lcom/android/server/wm/les;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/les$zta;
    }
.end annotation


# static fields
.field private static final NU:Z

.field private static final PU:I = 0x1

.field private static final QU:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpScreenDecor"


# instance fields
.field private DU:Z

.field private EU:Z

.field private FU:Landroid/view/View;

.field private GU:Landroid/widget/ImageView;

.field private HU:Landroid/graphics/Bitmap;

.field private IU:Landroid/graphics/Bitmap;

.field private JU:Landroid/graphics/Bitmap;

.field private KU:Landroid/graphics/Bitmap;

.field public LU:Z

.field public MU:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/wm/les$zta;

.field private mRotation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/les;->NU:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/les;->mRotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/les;->DU:Z

    iput-boolean v0, p0, Lcom/android/server/wm/les;->EU:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/les;->GU:Landroid/widget/ImageView;

    iput-boolean v0, p0, Lcom/android/server/wm/les;->LU:Z

    iput-object p1, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/wm/les;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Lcom/android/server/wm/les$zta;

    invoke-direct {p1, p0}, Lcom/android/server/wm/les$zta;-><init>(Lcom/android/server/wm/les;)V

    iput-object p1, p0, Lcom/android/server/wm/les;->mHandler:Lcom/android/server/wm/les$zta;

    invoke-direct {p0}, Lcom/android/server/wm/les;->setup()V

    iget-object p1, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/server/wm/vju;

    invoke-direct {v0, p0}, Lcom/android/server/wm/vju;-><init>(Lcom/android/server/wm/les;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private Lb(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private hq()Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/les;->MU:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v1, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50600ac

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/les;->MU:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/les;->MU:I

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget p0, p0, Lcom/android/server/wm/les;->MU:I

    int-to-float p0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, p0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method private iq()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/les;->LU:Z

    iget-boolean v1, p0, Lcom/android/server/wm/les;->EU:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/les;->EU:Z

    iget-object p0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/les;->LU:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/les;->EU:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/wm/les;->EU:Z

    iget-object p0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private jq()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7f6

    const v4, 0x20800138

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-boolean v0, Lcom/android/server/wm/les;->NU:Z

    if-nez v0, :cond_0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const-string v0, "ScreenDecorOverlayExpand"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/server/wm/les;->mRotation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x55

    :goto_1
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v0, p0, Lcom/android/server/wm/les;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/les;->Lb(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    return-object v6
.end method

.method private kq()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/les;->lq()V

    invoke-direct {p0}, Lcom/android/server/wm/les;->mq()V

    return-void
.end method

.method private lq()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/les;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/les;->jq()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private mq()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/les;->mRotation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/les;->GU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/wm/les;->IU:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/les;->GU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/wm/les;->JU:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/les;->GU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/wm/les;->KU:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/les;->GU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/wm/les;->HU:Landroid/graphics/Bitmap;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/server/wm/les;->LU:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    const/16 p0, 0x8

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setup()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/les;->hq()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/les;->HU:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/les;->HU:Landroid/graphics/Bitmap;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/les;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/les;->IU:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/les;->HU:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/les;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/les;->JU:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/les;->HU:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/les;->zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/les;->KU:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x5090006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    const v1, 0x507004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/wm/les;->GU:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/server/wm/les;->mq()V

    iget-object v0, p0, Lcom/android/server/wm/les;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/les;->jq()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    new-instance v1, Lcom/android/server/wm/bud;

    invoke-direct {v1, p0}, Lcom/android/server/wm/bud;-><init>(Lcom/android/server/wm/les;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/les;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/les;->iq()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/les;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/les;->kq()V

    return-void
.end method

.method private zta(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-float p0, p2

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/les;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected onConfigurationChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/les;->DU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/les;->mHandler:Lcom/android/server/wm/les$zta;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/les;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/les;->mRotation:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/wm/les;->mRotation:I

    iget-boolean v0, p0, Lcom/android/server/wm/les;->DU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/les;->kq()V

    :cond_0
    return-void
.end method

.method protected w(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/les;->FU:Landroid/view/View;

    const v0, 0x507004a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public z(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/les;->DU:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/les;->LU:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/les;->LU:Z

    iget-object p0, p0, Lcom/android/server/wm/les;->mHandler:Lcom/android/server/wm/les$zta;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
