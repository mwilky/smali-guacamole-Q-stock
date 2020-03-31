.class public Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "OpKeyguardClockPositionAlgorithm.java"


# instance fields
.field private mKeyguardClockY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public opGetClockY()I
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getClockY"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public opGetMaxClockY()I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    return p0
.end method

.method public opLoadDimens(Landroid/content/res/Resources;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/android/systemui/R$dimen;->op_keyguard_lockicon_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->mKeyguardClockY:I

    :goto_0
    return-void
.end method
