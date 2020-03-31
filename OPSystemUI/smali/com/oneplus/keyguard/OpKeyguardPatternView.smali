.class public Lcom/oneplus/keyguard/OpKeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "OpKeyguardPatternView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getSecurityMessageDisplay()Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardPatternView;

    const-string v1, "mSecurityMessageDisplay"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecurityMessageDisplay;

    return-object p0
.end method


# virtual methods
.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardPatternView;->getSecurityMessageDisplay()Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardPatternView;->getSecurityMessageDisplay()Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardPatternView;->getSecurityMessageDisplay()Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method
