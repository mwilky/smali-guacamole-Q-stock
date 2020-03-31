.class public Lcom/android/keyguard/clock/DefaultClockController;
.super Ljava/lang/Object;
.source "DefaultClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mTextDate:Landroid/widget/TextView;

.field private mTextTime:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    iput-object p1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/keyguard/R$layout;->default_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/clock/DefaultClockController;->createViews()V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/clock/DefaultClockController;->getBigClockView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/DefaultClockController;->setDarkAmount(F)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/DefaultClockController;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/DefaultClockController;->setColorPalette(Z[I)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/DefaultClockController;->onTimeTick()V

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/keyguard/R$drawable;->default_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/keyguard/R$string;->clock_title_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeTick()V
    .locals 0

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 0

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
