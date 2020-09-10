.class public Lcom/oneplus/aod/OpCustomTextClock;
.super Landroid/widget/TextView;
.source "OpCustomTextClock.java"


# instance fields
.field private mColorBottom:I

.field private mColorTop:I

.field private mGradientEndColor:I

.field private mGradientStartColor:I

.field private mGradientStyle:I

.field private final mHours:[Ljava/lang/String;

.field private final mMinutes:[Ljava/lang/String;

.field private mTextClockStringTemplate:I

.field private mTextClockStyle:I

.field private final mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpCustomTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpCustomTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTime:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStyle:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStartColor:I

    iput v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientEndColor:I

    iput v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorTop:I

    iput v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorBottom:I

    iput v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStringTemplate:I

    sget-object v1, Lcom/android/systemui/R$styleable;->OpCustomTextClock:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/oneplus/aod/OpCustomTextClock;->setupAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$array;->type_clock_hours:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpCustomTextClock;->mHours:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$array;->type_clock_minutes:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mMinutes:[Ljava/lang/String;

    return-void
.end method

.method private loadDimensions()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$font;->oneplus_aod_font:I

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_typographic_font_size:I

    const/16 v3, 0x64

    invoke-static {v0, v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_digital_font_size:I

    const/16 v3, 0xc8

    invoke-static {v0, v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$dimen;->aod_clock_typographic_font_line_space:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private loadProperties()V
    .locals 5

    const-string v0, "#"

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "sys.aod.gradient.color"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStartColor:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientEndColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpCustomTextClock"

    const-string v1, "parseColor occur exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setupAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_textClockStyle:I

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_gradientStyle:I

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStyle:I

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_gradientStartColor:I

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStartColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStartColor:I

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_gradientEndColor:I

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientEndColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientEndColor:I

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_colorTop:I

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorTop:I

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_colorBottom:I

    iget v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorBottom:I

    sget v0, Lcom/android/systemui/R$styleable;->OpCustomTextClock_textClockStringTemplate:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStringTemplate:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpCustomTextClock;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStyle:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    move v8, p3

    move p3, p1

    move p1, v8

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    new-instance p4, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p3

    int-to-float v4, p1

    iget v5, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientStartColor:I

    iget v6, p0, Lcom/oneplus/aod/OpCustomTextClock;->mGradientEndColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    :goto_1
    return-void
.end method

.method public onTimeChanged()V
    .locals 14

    iget-object v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTime:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0xc

    rem-int/2addr v0, v2

    iget-object v3, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStringTemplate:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/Annotation;

    array-length v5, v4

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    invoke-virtual {v8}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "color"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x21

    if-eqz v10, :cond_0

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget v10, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorTop:I

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_0
    const-string v10, "bold"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    const/16 v10, 0x190

    invoke-static {v9, v10, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    new-instance v10, Landroid/text/style/TypefaceSpan;

    invoke-direct {v10, v9}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v3, v10, v9, v12, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget v10, p0, Lcom/oneplus/aod/OpCustomTextClock;->mColorBottom:I

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_1
    const-string v10, "line-height1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v10, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v12, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/systemui/R$dimen;->oneplus_contorl_margin_bottom1:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-static {v12}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    iget v12, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v9

    sub-float/2addr v10, v12

    new-instance v9, Landroid/text/style/LineHeightSpan$Standard;

    float-to-int v10, v10

    invoke-direct {v9, v10}, Landroid/text/style/LineHeightSpan$Standard;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    const-string v10, "line-height2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v10, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v12, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/systemui/R$dimen;->aod_clock_typographic_font_line_space:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-static {v12}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    iget v12, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v9

    sub-float/2addr v10, v12

    new-instance v9, Landroid/text/style/LineHeightSpan$Standard;

    float-to-int v10, v10

    invoke-direct {v9, v10}, Landroid/text/style/LineHeightSpan$Standard;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v3, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/OpCustomTextClock;->mHours:[Ljava/lang/String;

    aget-object v0, v5, v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mMinutes:[Ljava/lang/String;

    aget-object v0, v0, v2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "HHmm"

    goto :goto_2

    :cond_6
    const-string v0, "hhmm"

    :goto_2
    iget-object v1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public setClockStyle(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTextClockStyle:I

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/aod/OpCustomTextClock;->loadProperties()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpCustomTextClock;->loadDimensions()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpCustomTextClock;->onTimeChanged()V

    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTimeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Lcom/oneplus/aod/OpCustomTextClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpCustomTextClock;->onTimeChanged()V

    return-void
.end method
