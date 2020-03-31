.class public Lcom/android/systemui/util/Utils$DisableStateTracker;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableStateTracker"
.end annotation


# instance fields
.field private mDisabled:Z

.field private final mMask1:I

.field private final mMask2:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask1:I

    iput p2, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask2:I

    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 0

    iget-object p4, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Display;->getDisplayId()I

    move-result p4

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask1:I

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask2:I

    and-int/2addr p1, p3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean p3, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mDisabled:Z

    if-ne p1, p3, :cond_3

    return-void

    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mDisabled:Z

    iget-object p0, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 p2, 0x8

    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    return-void
.end method
