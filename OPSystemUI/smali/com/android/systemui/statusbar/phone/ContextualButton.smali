.class public Lcom/android/systemui/statusbar/phone/ContextualButton;
.super Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.source "ContextualButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;
    }
.end annotation


# instance fields
.field private mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

.field protected final mIconResId:I

.field private mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    return-void
.end method


# virtual methods
.method attachToGroup(Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method protected getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->clearAnimationCallbacks()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;->onVisibilityChanged(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V

    :cond_2
    return-void
.end method

.method public show()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public updateIcon()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDarkIntensity()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :cond_2
    :goto_0
    return-void
.end method
