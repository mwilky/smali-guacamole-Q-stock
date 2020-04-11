.class public Lcom/oneplus/settings/ui/OPCarKitButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPCarKitButtonPreference.java"


# instance fields
.field protected mButtonEnable:Z

.field protected mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextSummaryString:Ljava/lang/String;

.field private mTextSummaryVisible:Z

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0179

    iput v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0179

    iput v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d0179

    iput v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setLayoutResource(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonVisible:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getButtonString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getLeftTextSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const v1, 0x7f0a0395

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a05b0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonVisible:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a039a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonEnable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryVisible:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryVisible:Z

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setLeftTextSummary(Ljava/lang/String;)V

    return-void
.end method

.method public setSummaryVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    return-void
.end method
