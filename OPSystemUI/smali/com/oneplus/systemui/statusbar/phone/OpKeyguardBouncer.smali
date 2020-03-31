.class public Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;
.super Ljava/lang/Object;
.source "OpKeyguardBouncer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKeyguardView()Lcom/android/keyguard/KeyguardHostView;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const-string v1, "mKeyguardView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    return-object p0
.end method


# virtual methods
.method public showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->getKeyguardView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->getKeyguardView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/keyguard/OpKeyguardHostView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;I)V

    goto :goto_0

    :cond_0
    const-string p0, "OpKeyguardBouncer"

    const-string p1, "Trying to show message on empty bouncer"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
