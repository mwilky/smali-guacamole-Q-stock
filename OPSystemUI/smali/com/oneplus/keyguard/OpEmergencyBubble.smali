.class public Lcom/oneplus/keyguard/OpEmergencyBubble;
.super Landroid/widget/FrameLayout;
.source "OpEmergencyBubble.java"


# static fields
.field public static ACTIVE_CIRCLE_COLOR:I = -0x14ffd8

.field public static ACTIVE_TEXT_COLOR:I = -0x1

.field public static DEFAULT_CIRCLE_COLOR:I = -0x1


# instance fields
.field private mCircleAlpha:I

.field private mCircleColor:I

.field private mCircleRadius:F

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Landroid/widget/TextView;

.field private mTextColor:I

.field private mTextColorAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    const/16 p2, 0xff

    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    const p2, -0x14ffd8

    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    const/16 p2, 0x66

    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColorAlpha:I

    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private drawWhiteCircle(Landroid/graphics/Canvas;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    invoke-virtual {p1, p0, p0, p0, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->op_emergency_bubble_diameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    return-void
.end method


# virtual methods
.method public drawView(IIIII)V
    .locals 0

    iput p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    iput p4, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    iput p5, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColorAlpha:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawWhiteCircle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawText()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->sos:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    return-void
.end method

.method public reset()V
    .locals 1

    sget v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    const v0, -0x14ffd8

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColorAlpha:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
