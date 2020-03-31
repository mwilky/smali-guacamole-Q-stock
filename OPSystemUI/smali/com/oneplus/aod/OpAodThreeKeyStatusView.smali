.class public Lcom/oneplus/aod/OpAodThreeKeyStatusView;
.super Landroid/widget/LinearLayout;
.source "OpAodThreeKeyStatusView.java"


# static fields
.field public static MODE_NONE:I = 0x0

.field public static MODE_SILENCE:I = 0x1

.field public static MODE_VIBRATE:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "AodThreeKeyStatusView"

    iput-object p1, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "AodThreeKeyStatusView"

    iput-object p1, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "AodThreeKeyStatusView"

    iput-object p1, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "AodThreeKeyStatusView"

    iput-object p1, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->three_key_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->three_key_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->MODE_NONE:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    sget v1, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->MODE_SILENCE:I

    if-ne p1, v1, :cond_1

    sget v1, Lcom/android/systemui/R$drawable;->aod_stat_sys_three_key_silent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->MODE_VIBRATE:I

    if-ne p1, v1, :cond_2

    sget v1, Lcom/android/systemui/R$drawable;->aod_stat_sys_ringer_vibrate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->aod_stat_sys_three_key_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    sget v0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->MODE_SILENCE:I

    if-ne p1, v0, :cond_4

    sget p1, Lcom/android/systemui/R$string;->volume_footer_slient:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->MODE_VIBRATE:I

    if-ne p1, v0, :cond_5

    sget p1, Lcom/android/systemui/R$string;->volume_vibrate:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    sget p1, Lcom/android/systemui/R$string;->volume_footer_ring:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_1
    return-void
.end method
