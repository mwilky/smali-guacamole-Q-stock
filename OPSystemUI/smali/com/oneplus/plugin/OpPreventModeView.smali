.class public Lcom/oneplus/plugin/OpPreventModeView;
.super Landroid/widget/RelativeLayout;
.source "OpPreventModeView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mInnerView:Landroid/widget/LinearLayout;

.field mOrientatin:I

.field private mPhone:Landroid/widget/ImageView;

.field private mRippleView:Lcom/oneplus/plugin/OpRippleView;

.field private mScrim:Landroid/view/View;

.field private mTag:Landroid/widget/TextView;

.field private mTag2:Landroid/widget/TextView;

.field private mTagNum1:Landroid/widget/TextView;

.field private mTagNum2:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "OpPreventModeView"

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "OpPreventModeView"

    iput-object p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "OpPreventModeView"

    iput-object p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, "OpPreventModeView"

    iput-object p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private playRippleAniamor()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpRippleView;->prepare()V

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->startRipple()V

    return-void
.end method

.method private relayout()V
    .locals 0

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->prevent_mode_inner_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_mode_phone:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_title_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_cancel2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_number1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum1:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_number2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum2:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->rippleview_first:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/plugin/OpRippleView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mConfig:Landroid/content/res/Configuration;

    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mScrim:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$drawable;->prevent_mode_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->relayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_title_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mConfig:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->relayout()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->stopRipple()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->playRippleAniamor()V

    :cond_1
    :goto_0
    return-void
.end method
