.class Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;
.super Landroid/widget/ImageButton;
.source "SizeCompatModeActivityController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SizeCompatModeActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestartActivityButton"
.end annotation


# instance fields
.field mLastActivityToken:Landroid/os/IBinder;

.field final mPopupOffsetX:I

.field final mPopupOffsetY:I

.field final mShouldShowHint:Z

.field mShowingHint:Landroid/widget/PopupWindow;

.field final mWinParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mShouldShowHint:Z

    sget p2, Lcom/android/systemui/R$drawable;->btn_restart:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/android/systemui/R$string;->restart_button_description:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mPopupOffsetX:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mPopupOffsetY:I

    const v2, -0x333334

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->getGravity(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x7f6

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x28

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p2, -0x3

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/systemui/SizeCompatModeActivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getGravity(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x800003

    goto :goto_0

    :cond_0
    const p0, 0x800005

    :goto_0
    or-int/lit8 p0, p0, 0x50

    return p0
.end method

.method static synthetic lambda$showHint$1(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showHint$0$SizeCompatModeActivityController$RestartActivityButton()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mShowingHint:Landroid/widget/PopupWindow;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mShouldShowHint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->showHint()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mLastActivityToken:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SizeCompatMode"

    const-string v0, "Unable to restart activity"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->showHint()V

    const/4 p0, 0x1

    return p0
.end method

.method remove()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->getGravity(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v0, :cond_1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mShowingHint:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->showHint()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutDirection(I)V

    return-void
.end method

.method show()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SizeCompatMode"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method showHint()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mShowingHint:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->size_compat_mode_hint:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    const v3, 0x1030056

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    new-instance v3, Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$rxc8GUe9hnz5kAfzl4xmCIiwi3Y;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$rxc8GUe9hnz5kAfzl4xmCIiwi3Y;-><init>(Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mShowingHint:Landroid/widget/PopupWindow;

    sget v3, Lcom/android/systemui/R$id;->got_it:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const v4, -0x333334

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v2, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$tZJkvUnAETgfbkQvNUGL2mQWd9s;

    invoke-direct {v2, v1}, Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$tZJkvUnAETgfbkQvNUGL2mQWd9s;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mPopupOffsetX:I

    iget v3, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mPopupOffsetY:I

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method updateLastTargetActivity(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->mLastActivityToken:Landroid/os/IBinder;

    return-void
.end method
