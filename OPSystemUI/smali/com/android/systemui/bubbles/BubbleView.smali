.class public Lcom/android/systemui/bubbles/BubbleView;
.super Landroid/widget/FrameLayout;
.source "BubbleView.java"


# instance fields
.field private mBadgeColor:I

.field private mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

.field private mContext:Landroid/content/Context;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mIconInset:I

.field private mPadding:I

.field private mSuppressDot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_view_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mPadding:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_icon_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mIconInset:I

    return-void
.end method

.method private animateDot(ZLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BadgedImageView;->isShowingDot()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;-><init>(Lcom/android/systemui/bubbles/BubbleView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;-><init>(Lcom/android/systemui/bubbles/BubbleView;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private buildIconWithTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleView;->checkTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mIconInset:I

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private checkTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/16 p0, 0xff

    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    if-nez p0, :cond_0

    const p0, -0x333334

    :cond_0
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide v2, 0x4010666666666666L    # 4.1

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/high16 p0, -0x1000000

    const/16 p2, 0xb4

    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-object p1
.end method

.method private determineDominateColor(Landroid/graphics/drawable/Drawable;I)I
    .locals 0

    const/4 p0, -0x1

    const p1, 0x3f0a3d71    # 0.54f

    invoke-static {p2, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method private updateDotVisibility(ZLjava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method getBadgeColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgeColor:I

    return p0
.end method

.method getDotPositionOnLeft()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotPosition()Z

    move-result p0

    return p0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$animateDot$1$BubbleView(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    return-void
.end method

.method public synthetic lambda$animateDot$2$BubbleView(ZLjava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setDotPosition$0$BubbleView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotPosition(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->bubble_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    return-void
.end method

.method setDotPosition(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotPosition()Z

    move-result p2

    if-eq p1, p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;-><init>(Lcom/android/systemui/bubbles/BubbleView;Z)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotPosition(Z)V

    :goto_0
    return-void
.end method

.method public setNotif(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    return-void
.end method

.method setSuppressDot(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    return-void
.end method

.method updateDotVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateViews()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    iget v3, v1, Landroid/app/Notification;->color:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/bubbles/BubbleView;->buildIconWithTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->determineDominateColor(Landroid/graphics/drawable/Drawable;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgeColor:I

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotColor(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    return-void
.end method
