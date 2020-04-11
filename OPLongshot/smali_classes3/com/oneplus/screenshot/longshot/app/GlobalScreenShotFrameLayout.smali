.class public Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
.super Landroid/widget/FrameLayout;
.source "GlobalScreenShotFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalFrameLayout"


# instance fields
.field private mKeyCallback:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;->onKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public registerKeyEventCallBack(Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerKeyEventCallBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalFrameLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    return-void
.end method

.method public unregisterKeyEventCallBack()V
    .locals 2

    const-string v0, "Longshot.GlobalFrameLayout"

    const-string v1, "unregisterKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    return-void
.end method
