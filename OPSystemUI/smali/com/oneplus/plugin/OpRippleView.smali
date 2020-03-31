.class public Lcom/oneplus/plugin/OpRippleView;
.super Landroid/view/View;
.source "OpRippleView.java"


# static fields
.field public static MESSAGE_DELAY:I = 0x14


# instance fields
.field private COLOR:I

.field private DURATION:F

.field private END_RADIUS_FISRT:F

.field private END_RADIUS_SECOND:F

.field private START_RADIUS_FIRST:F

.field private START_RADIUS_SECOND:F

.field private STROKE_WIDTH_FIRST:I

.field private STROKE_WIDTH_SECOUND:I

.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isStartRipple:Z

.field private mClickCount:I

.field private mOffsetFirst:F

.field private mOffsetSecond:F

.field private mPositionX:I

.field private mPositionY:I

.field private mRipplePaintFirst:Landroid/graphics/Paint;

.field private mRipplePaintSecond:Landroid/graphics/Paint;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private rippleFirstRadius:I

.field private rippleSecendRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "OpRippleView"

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    const-string v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v1, -0x5

    iput v1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    new-instance v0, Lcom/oneplus/plugin/OpRippleView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/plugin/OpRippleView$1;-><init>(Lcom/oneplus/plugin/OpRippleView;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "OpRippleView"

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->TAG:Ljava/lang/String;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 p2, 0x41f00000    # 30.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    const/high16 p2, 0x42f00000    # 120.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    const/high16 p2, 0x42480000    # 50.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    const/high16 p2, 0x43160000    # 150.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    const/high16 p2, 0x447a0000    # 1000.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    const-string p2, "#888888"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    const/4 p2, 0x4

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v0, -0x5

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    new-instance p2, Lcom/oneplus/plugin/OpRippleView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/plugin/OpRippleView$1;-><init>(Lcom/oneplus/plugin/OpRippleView;)V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "OpRippleView"

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->TAG:Ljava/lang/String;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    const/high16 p2, 0x41f00000    # 30.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    const/high16 p2, 0x42f00000    # 120.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    const/high16 p2, 0x42480000    # 50.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    const/high16 p2, 0x43160000    # 150.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    const/high16 p2, 0x447a0000    # 1000.0f

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    const-string p2, "#888888"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    const/4 p2, 0x4

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 p3, -0x5

    iput p3, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    iput p2, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    new-instance p2, Lcom/oneplus/plugin/OpRippleView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/plugin/OpRippleView$1;-><init>(Lcom/oneplus/plugin/OpRippleView;)V

    iput-object p2, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/plugin/OpRippleView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/plugin/OpRippleView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    return p1
.end method

.method static synthetic access$108(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/plugin/OpRippleView;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/plugin/OpRippleView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    return p1
.end method

.method static synthetic access$308(Lcom/oneplus/plugin/OpRippleView;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public generatePosition()V
    .locals 9

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    iget v4, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v5, 0x2

    if-nez v4, :cond_0

    div-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v4, v2

    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    float-to-int v2, v2

    sub-int v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    :goto_0
    move v8, v4

    move v4, v1

    move v1, v8

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    int-to-float v4, v1

    sub-float/2addr v4, v2

    float-to-int v4, v4

    div-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    float-to-int v2, v2

    sub-int v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    int-to-float v5, v6

    iget v6, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    int-to-float v4, v1

    sub-float/2addr v4, v2

    float-to-int v4, v4

    div-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v6, v3

    sub-float/2addr v6, v2

    float-to-int v6, v6

    div-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, v4, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenWidth:I

    div-int/2addr v7, v5

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v3, v6, v2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    div-int/2addr v3, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    move v3, v6

    goto :goto_1

    :cond_2
    div-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v4, v2

    int-to-float v6, v3

    sub-float/2addr v6, v2

    float-to-int v6, v6

    div-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    sub-int v3, v6, v2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mScreenHeight:I

    div-int/2addr v3, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    move v3, v6

    goto/16 :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generatePosition : click = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < x < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < y < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpRippleView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generatePosition: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isValidPosition(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidPosition: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpRippleView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    int-to-float v4, v2

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    int-to-float v2, v2

    sub-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    int-to-float v0, p0

    add-float/2addr v0, v5

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    int-to-float p0, p0

    sub-float/2addr p0, v5

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const-string p0, "isValidPosition: true"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    const-wide v1, 0x406fe00000000000L    # 255.0

    const-wide v3, 0x400921ff2e48e8a7L    # 3.1416

    if-ltz v0, :cond_0

    sget v5, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    int-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    iget-object v5, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    iget v7, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetFirst:F

    iget v8, p0, Lcom/oneplus/plugin/OpRippleView;->rippleFirstRadius:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    if-ltz v0, :cond_1

    sget v5, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    float-to-double v3, v3

    div-double/2addr v5, v3

    int-to-double v3, v0

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    iget-object v1, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->mPositionY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_SECOND:F

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetSecond:F

    iget v4, p0, Lcom/oneplus/plugin/OpRippleView;->rippleSecendRadius:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oneplus/plugin/OpRippleView;->isValidPosition(Landroid/view/MotionEvent;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: isValid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpRippleView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->stopRipple()V

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->startRipple()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepare()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mClickCount:I

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->generatePosition()V

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_FISRT:F

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->START_RADIUS_FIRST:F

    sub-float/2addr v0, v1

    sget v2, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-float v3, v2

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/oneplus/plugin/OpRippleView;->DURATION:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetFirst:F

    iget v0, p0, Lcom/oneplus/plugin/OpRippleView;->END_RADIUS_SECOND:F

    sub-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/plugin/OpRippleView;->mOffsetSecond:F

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_FIRST:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/plugin/OpRippleView;->STROKE_WIDTH_SECOUND:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/plugin/OpRippleView;->COLOR:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public startRipple()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->generatePosition()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/plugin/OpRippleView;->startRipple(I)V

    return-void
.end method

.method public startRipple(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    iget-object p0, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopRipple()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpRippleView;->isStartRipple:Z

    iget-object p0, p0, Lcom/oneplus/plugin/OpRippleView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
