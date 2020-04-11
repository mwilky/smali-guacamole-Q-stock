.class public Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SmallScreenShotFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.SmallScreenShotFrameLayout"


# instance fields
.field private mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;->onTouch(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public registerCallBack(Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;

    return-void
.end method

.method public unRegisterCallBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;

    return-void
.end method
