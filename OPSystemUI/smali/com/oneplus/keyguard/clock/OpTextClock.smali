.class public Lcom/oneplus/keyguard/clock/OpTextClock;
.super Landroid/widget/TextClock;
.source "OpTextClock.java"


# instance fields
.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/keyguard/clock/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/clock/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/keyguard/clock/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/oneplus/keyguard/clock/OpTextClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/clock/OpTextClock$1;-><init>(Lcom/oneplus/keyguard/clock/OpTextClock;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p0}, Landroid/widget/TextClock;->disableClockTick()V

    return-void
.end method

.method private registerReceiver()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextClock;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mRegistered:Z

    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpTextClock;->registerReceiver()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextClock;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpTextClock;->unregisterReceiver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/clock/OpTextClock;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextClock;->refresh()V

    return-void
.end method
