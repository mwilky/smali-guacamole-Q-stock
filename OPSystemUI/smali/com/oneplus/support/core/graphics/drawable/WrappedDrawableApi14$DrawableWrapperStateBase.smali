.class Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperStateBase;
.super Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.source "WrappedDrawableApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateBase"
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;-><init>(Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14;-><init>(Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
