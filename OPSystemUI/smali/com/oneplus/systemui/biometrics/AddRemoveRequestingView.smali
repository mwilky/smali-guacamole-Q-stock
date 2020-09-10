.class public abstract Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;
.super Landroid/widget/FrameLayout;
.source "AddRemoveRequestingView.java"


# instance fields
.field protected mDialog:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mShowingRequest:Z

.field protected final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected addAlready()V
    .locals 0

    return-void
.end method

.method public addToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->selfAddToWindow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    const-string v1, "addToWindow: window already request to added."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->addAlready()V

    :goto_0
    return-void
.end method

.method public isRequestShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow: mRequestShowing= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->selfRemoveFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: mRequestShowing= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->selfAddToWindow()V

    :cond_0
    return-void
.end method

.method protected removeAlready()V
    .locals 0

    return-void
.end method

.method public removeFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->selfRemoveFromWindow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    const-string v1, "removeFromWindow: window already request to removed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeAlready()V

    :goto_0
    return-void
.end method

.method protected selfAddToWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mDialog:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    const-string v0, "addToWindow: maybe during removing progress. wait..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected selfRemoveFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    const-string v0, "removeFromWindow: maybe during adding progress. wait..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mDialog:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setDialog(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mDialog:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->mShowingRequest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "([%s]: mShowingRequest: %b, isAttachedToWindow: %b, visibility: %d)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
