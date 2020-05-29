.class public Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "OpStatusIconContainer.java"


# static fields
.field protected static final MAX_DOTS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getMaxDotsForStatusIconContainer()I

    move-result v0

    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->MAX_DOTS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected setUnderflowWidth(III)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
