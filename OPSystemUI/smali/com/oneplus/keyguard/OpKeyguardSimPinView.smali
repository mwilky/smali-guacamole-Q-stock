.class public abstract Lcom/oneplus/keyguard/OpKeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "OpKeyguardSimPinView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getSlotId()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardSimPinView;

    const-string v1, "mSlotId"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getSubId()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardSimPinView;

    const-string v1, "mSubId"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getPinPasswordErrorMessageObject(IZ)Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;
    .locals 6

    new-instance v0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;

    invoke-direct {v0}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setType(I)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setDisplayMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    if-lez p1, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-le v3, v1, :cond_2

    if-eqz p2, :cond_1

    sget p2, Lcom/android/keyguard/R$plurals;->kg_password_default_pin_message_multi_sim:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code_multi_sim:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardSimPinView;->getSlotId()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setDisplayMessage(Ljava/lang/String;)V

    sget v3, Lcom/android/keyguard/R$plurals;->kg_password_default_pin_message_multi_sim:I

    if-ne p2, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setType(I)V

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    sget p2, Lcom/android/keyguard/R$plurals;->kg_password_default_pin_message:I

    goto :goto_1

    :cond_3
    sget p2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, p2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setDisplayMessage(Ljava/lang/String;)V

    sget v3, Lcom/android/keyguard/R$plurals;->kg_password_default_pin_message:I

    if-ne p2, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setType(I)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    sget p2, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    goto :goto_2

    :cond_5
    sget p2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setDisplayMessage(Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardSimPinView;->getSubId()I

    move-result v3

    invoke-static {p2, v3}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_sim_lock_esim_instructions:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->setDisplayMessage(Ljava/lang/String;)V

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPinPasswordErrorMessageObject: attemptsRemaining="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpKeyguardSimPinView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
