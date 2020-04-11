.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsViewState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsViewState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    return-void
.end method


# virtual methods
.method protected clearContentBackground(Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected clearDecorForeground(Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected initContent(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearContentBackground(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearDecorForeground(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected abstract initViews(Landroid/widget/FrameLayout;)V
.end method

.method public onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getDecorView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initContent(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initViews(Landroid/widget/FrameLayout;)V

    return-void
.end method
