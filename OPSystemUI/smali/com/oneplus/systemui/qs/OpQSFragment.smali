.class public Lcom/oneplus/systemui/qs/OpQSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "OpQSFragment.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/qs/OpQSFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public setExpansionHight(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mVisible:Z

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mVisible:Z

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v3

    if-eqz v2, :cond_3

    iget-boolean p0, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mVisible:Z

    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setQSExpanded(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setQSExpanded(Z)V

    :cond_4
    :goto_2
    return-void
.end method
