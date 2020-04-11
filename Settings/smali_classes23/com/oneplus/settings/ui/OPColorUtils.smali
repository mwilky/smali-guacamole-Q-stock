.class public Lcom/oneplus/settings/ui/OPColorUtils;
.super Ljava/lang/Object;
.source "OPColorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/ui/OPColorUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ui/OPColorUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMainColor(Landroid/graphics/Bitmap;I)I
    .locals 3

    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/oneplus/settings/ui/OPColorUtils$1;

    invoke-direct {v2}, Lcom/oneplus/settings/ui/OPColorUtils$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return p1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v2

    return v2
.end method

.method static getMainColor(Landroid/graphics/drawable/Drawable;I)I
    .locals 3

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPBitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/oneplus/settings/ui/OPColorUtils;->TAG:Ljava/lang/String;

    const-string v2, "cannot create bitmap from drawable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPColorUtils;->getMainColor(Landroid/graphics/Bitmap;I)I

    move-result v1

    return v1
.end method
