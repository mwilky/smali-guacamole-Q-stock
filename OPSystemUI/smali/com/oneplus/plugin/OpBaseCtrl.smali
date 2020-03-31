.class public abstract Lcom/oneplus/plugin/OpBaseCtrl;
.super Ljava/lang/Object;
.source "OpBaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;

.field protected mContext:Landroid/content/Context;

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mStarted:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mStarted:Z

    return p0
.end method

.method public abstract onFinishedGoingToSleep(I)V
.end method

.method public abstract onKeyguardBouncerChanged(Z)V
.end method

.method public abstract onKeyguardVisibilityChanged(Z)V
.end method

.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract onStartCtrl()V
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract onWallpaperChange(Landroid/graphics/Bitmap;)V
.end method

.method public setCallback(Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mCallback:Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;

    return-void
.end method

.method public startCtrl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mStarted:Z

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpBaseCtrl;->onStartCtrl()V

    return-void
.end method
