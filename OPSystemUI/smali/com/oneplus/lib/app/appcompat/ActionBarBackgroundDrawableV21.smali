.class Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawableV21;
.super Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarBackgroundDrawable;->mContainer:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_1
    :goto_0
    return-void
.end method
