.class public Lcom/oneplus/lib/widget/OPEditText;
.super Landroid/widget/EditText;
.source "OPEditText.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mErrorBackground:Landroid/graphics/drawable/Drawable;

.field mHightlightColorAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_EditText:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/OPEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->startHightlightColorAnim()V

    return-void
.end method

.method private getETBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_edit_text_material_light:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getETErrBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_edit_text_error_material_light:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "OPListView"

    const-string v1, "OPEditText init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPEditText:[I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->OPEditTextStyle:I

    sget v2, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_EditText:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEditText_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEditText_colorError:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->getETBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->getETErrBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance p1, Lcom/oneplus/lib/widget/OPEditText$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/OPEditText$1;-><init>(Lcom/oneplus/lib/widget/OPEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private startHightlightColorAnim()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v1, v1

    const/4 v4, 0x0

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v4, v2, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/widget/OPEditText$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/OPEditText$2;-><init>(Lcom/oneplus/lib/widget/OPEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEditText;->mHightlightColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public setError(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const-string v0, "OPListView"

    const-string v1, "OPEditText setError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
