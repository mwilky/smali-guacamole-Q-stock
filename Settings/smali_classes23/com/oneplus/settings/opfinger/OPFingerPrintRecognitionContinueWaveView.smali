.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueWaveView.java"


# static fields
.field public static final ANIM_DELAY_TIME:I = 0x20

.field public static final PATH_1:I = 0x0

.field public static final PATH_2:I = 0x1

.field public static final PATH_3:I = 0x2

.field public static final PATH_4:I = 0x3

.field public static final PATH_5:I = 0x4

.field public static final PATH_6:I = 0x5

.field public static final PATH_7:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

.field private mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/SvgView;->setSvgResource(I)V

    return-object v0
.end method


# virtual methods
.method public doRecognitionByCount(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x2

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/opfinger/SvgView;->reveal(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    const v0, 0x7f110076

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110077

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110079

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11007b

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11007c

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11007e

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11007f

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110081

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110082

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110084

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110085

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110087

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110088

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11008a

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11008b

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11008d

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f11008e

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    const v0, 0x7f110090

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->getSvgView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->initSvgView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public resetWithAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithAnimation()V

    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->resetWithoutAnimation()V

    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/SvgView;->revealWithoutAnimation()V

    return-void
.end method

.method public setBackGround(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080637

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080635

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mFingerPrintView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public startTouchDownAnim()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f70a3d7    # 0.94f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f70a3d7    # 0.94f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f882b93

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f882b93

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x2

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v6

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x21e

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_01:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v9

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x2

    const/high16 v17, 0x3f000000    # 0.5f

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v9, 0x20

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/16 v18, 0x2

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v11, v9

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1fe

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_02:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v9

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v9, 0x40

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/16 v18, 0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1de

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_14_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_03:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v9

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v9, 0x60

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/16 v18, 0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x1be

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_12_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_13_04:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v9

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v9, 0x80

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/16 v18, 0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x19e

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_11_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_05:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v9

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v9, 0xa0

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f882b93

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f882b93

    const/16 v18, 0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v9, 0x17e

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_16_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_17_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_18_06:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v9, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v9

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f70a3d7    # 0.94f

    const v13, 0x3f70a3d7    # 0.94f

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0xc0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3f882b93

    const v13, 0x3f882b93

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_15_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v4, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_19_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v4, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueWaveView;->mSvgView_20_07:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v4, v1}, Lcom/oneplus/settings/opfinger/SvgView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
