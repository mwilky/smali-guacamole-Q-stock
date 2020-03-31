.class public Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "OpNotificationIconContainer.java"


# static fields
.field protected static final MAX_DOTS:I


# instance fields
.field protected mIconPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x40

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->MAX_DOTS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected initDimensInternal()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_notification_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->mIconPadding:I

    return-void
.end method

.method protected setOverflowWidth(III)I
    .locals 0

    sget p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->MAX_DOTS:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/2addr p2, p3

    mul-int/2addr p0, p2

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
