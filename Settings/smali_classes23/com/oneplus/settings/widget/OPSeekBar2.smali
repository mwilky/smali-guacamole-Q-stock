.class public Lcom/oneplus/settings/widget/OPSeekBar2;
.super Lcom/oneplus/lib/widget/OPSeekBar;
.source "OPSeekBar2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805be

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805b1

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805bf

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805b2

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
