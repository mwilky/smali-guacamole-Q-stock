.class public Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$IntrinsicSizeDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "OpLockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IntrinsicSizeDrawable"
.end annotation


# instance fields
.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$IntrinsicSizeDrawable;->mIntrinsicWidth:I

    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$IntrinsicSizeDrawable;->mIntrinsicHeight:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$IntrinsicSizeDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$IntrinsicSizeDrawable;->mIntrinsicWidth:I

    return p0
.end method
