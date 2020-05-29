.class public Lcom/oneplus/aod/OpFpAodIndicationText;
.super Landroid/widget/TextView;
.source "OpFpAodIndicationText.java"


# instance fields
.field private mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIndication:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpFpAodIndicationText;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpFpAodIndicationText;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mIndication:Landroid/view/View;

    return-object p0
.end method

.method private getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 3

    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown security quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method private setAodIndicationText(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    return-void
.end method

.method private setAodIndicationText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpFpAodIndicationText$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText$1;-><init>(Lcom/oneplus/aod/OpFpAodIndicationText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public animateErrorText()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpFpAodIndicationText$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpFpAodIndicationText$2;-><init>(Lcom/oneplus/aod/OpFpAodIndicationText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iget-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mIndication:Landroid/view/View;

    return-void
.end method

.method public resetState()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateFPIndicationText(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFPIndicationText: lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFpAodIndicationText"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x10402a1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p2}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->animateErrorText()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_4

    sget v0, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_pattern:I

    :cond_3
    :goto_0
    move p1, v0

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_5

    sget v0, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_password:I

    goto :goto_0

    :cond_5
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_3

    sget v0, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_pin:I

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(I)V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->animateErrorText()V

    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFPIndicationText: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
